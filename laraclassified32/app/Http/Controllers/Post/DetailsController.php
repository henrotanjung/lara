<?php
/**
 * LaraClassified - Geo Classified Ads CMS
 * Copyright (c) BedigitCom. All Rights Reserved
 *
 * Website: http://www.bedigit.com
 *
 * LICENSE
 * -------
 * This software is furnished under a license and may be used and copied
 * only in accordance with the terms of such license and with the inclusion
 * of the above copyright notice. If you Purchased from Codecanyon,
 * Please read the full License from here - http://codecanyon.net/licenses/standard
 */

namespace App\Http\Controllers\Post;

use App\Events\PostWasVisited;
use App\Helpers\Arr;
use App\Http\Controllers\Post\Traits\CustomFieldTrait;
use App\Http\Requests\SendMessageRequest;
use App\Models\Post;
use App\Models\PostType;
use App\Models\Category;
use App\Models\City;
use App\Models\Message;
use App\Models\Package;
use App\Models\Payment;
use App\Http\Controllers\FrontController;
use App\Models\User;
use App\Models\Scopes\VerifiedScope;
use App\Models\Scopes\ReviewedScope;
use App\Notifications\SellerContacted;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Input;
use Jenssegers\Date\Date;
use Larapen\TextToImage\Facades\TextToImage;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\DB;
use Torann\LaravelMetaTags\Facades\MetaTag;
use Illuminate\Support\Facades\Auth;
use App\Helpers\Localization\Helpers\Country as CountryLocalizationHelper;
use App\Helpers\Localization\Country as CountryLocalization;

class DetailsController extends FrontController
{
    use CustomFieldTrait;
    
    /**
     * Post expire time (in months)
     *
     * @var int
     */
    public $expireTime = 24;
    
    public $reviewsPlugin;
    
    /**
     * DetailsController constructor.
     */
    public function __construct()
    {
        parent::__construct();
        
        // From Laravel 5.3.4 or above
        $this->middleware(function ($request, $next) {
            $this->commonQueries();
            
            return $next($request);
        });
    }
    
    /**
     * Common Queries
     */
    public function commonQueries()
    {
        // Check Country URL for SEO
        $countries = CountryLocalizationHelper::transAll(CountryLocalization::getCountries());
        view()->share('countries', $countries);
        
        // Check and load Reviews plugin
        $this->reviewsPlugin = load_installed_plugin('reviews');
        view()->share('reviewsPlugin', $this->reviewsPlugin);
    }
    
    /**
     * Show Dost's Details.
     *
     * @param $title
     * @param $postId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index($title, $postId)
    {
        $data = [];
        
        if (!is_numeric($postId)) {
            abort(404);
        }
        
        // GET POST'S DETAILS
        if (Auth::check()) {
            // Get post's details even if it's not activated and reviewed
            $post = Post::withoutGlobalScopes([VerifiedScope::class, ReviewedScope::class])->where('id', $postId)->with(['user', 'city', 'pictures'])->first();
            
            // If the logged user is not an admin user...
            if (Auth::user()->is_admin != 1) {
                // Then don't get post that are not from the user
                if (!empty($post) && $post->user_id != Auth::user()->id) {
                    $post = Post::where('id', $postId)->with(['user', 'city', 'pictures'])->first();
                }
            }
        } else {
            $post = Post::where('id', $postId)->with(['user', 'city', 'pictures'])->first();
        }
        // Preview Post after activation
        if (Input::has('preview') && Input::get('preview') == 1) {
            // Get post's details even if it's not activated and reviewed
            $post = Post::withoutGlobalScopes([VerifiedScope::class, ReviewedScope::class])->where('id', $postId)->with(['user', 'city', 'pictures'])->first();
        }
        
        // Post not found
        if (empty($post) || empty($post->city)) {
            abort(404, t('Post not found'));
        }
        
        // Share post's details
        view()->share('post', $post);
        
        
        // Get category details
        $cacheId = 'category.' . $post->category_id . '.' . config('app.locale');
        $cat = Cache::remember($cacheId, $this->cacheExpiration, function () use ($post) {
            $cat = Category::transById($post->category_id);
            return $cat;
        });
        view()->share('cat', $cat);
        
        // Get post's type details
        $cacheId = 'postType.' . $post->post_type_id . '.' . config('app.locale');
        $postType = Cache::remember($cacheId, $this->cacheExpiration, function () use ($post) {
            $postType = PostType::transById($post->post_type_id);
            return $postType;
        });
        view()->share('postType', $postType);
        
        
        // Require info
        if (empty($cat) || empty($postType)) {
            abort(404);
        }
        
        
        // Get Custom Fields
        $customFields = $this->getPostFieldsValues($cat->parent_id, $post->id);
        view()->share('customFields', $customFields);
        
        
        // Get package details
        $package = null;
        if ($post->featured == 1) {
            $payment = Payment::where('post_id', $post->id)->orderBy('id', 'DESC')->first();
            if (!empty($payment)) {
                $package = Package::transById($payment->package_id);
            }
        }
        view()->share('package', $package);
        
        
        // Get ad's user decision about comments activation
        $commentsAreDisabledByAdUser = false;
        // Get possible ad's user
        if (isset($post->user_id) && !empty($post->user_id)) {
            $possibleAdUser = User::find($post->user_id);
            if (!empty($possibleAdUser)) {
                if ($possibleAdUser->disable_comments == 1) {
                    $commentsAreDisabledByAdUser = true;
                }
            }
        }
        view()->share('commentsAreDisabledByAdUser', $commentsAreDisabledByAdUser);
        
        
        // GET PARENT CATEGORY
        if ($cat->parent_id == 0) {
            $parentCat = $cat;
        } else {
            $parentCat = Category::transById($cat->parent_id, config('app.locale'));
        }
        view()->share('parentCat', $parentCat);
        
        // Increment Post visits counter
        Event::fire(new PostWasVisited($post));
        
        // GET SIMILAR POSTS
        $featured = $this->getSimilarPosts($post);
        $data['featured'] = $featured;
        
        // SEO
        $title = $post->title . ', ' . $post->city->name;
        $description = str_limit(str_strip($post->description), 200);
        
        // Meta Tags
        MetaTag::set('title', $title);
        MetaTag::set('description', $description);
        
        // Open Graph
        $this->og->title($title)
            ->description($description)
            ->type('article')
            ->article(['author' => config('settings.facebook_page_url')])
            ->article(['publisher' => config('settings.facebook_page_url')]);
        if (!$post->pictures->isEmpty()) {
            if ($this->og->has('image')) {
                $this->og->forget('image')->forget('image:width')->forget('image:height');
            }
            foreach ($post->pictures as $picture) {
                $this->og->image(resize($picture->filename, 'large'), [
                    'width'  => 600,
                    'height' => 600,
                ]);
            }
        }
        view()->share('og', $this->og);
        
        // Expiration Info
        $today_dt = Date::now(config('timezone.id'));
        if ($today_dt->gt($post->created_at->addMonths($this->expireTime))) {
            flash(t("Warning! This ad has expired. The product or service is not more available (may be)"))->error();
        }
        
        // Reviews Plugin Data
        if (isset($this->reviewsPlugin) and !empty($this->reviewsPlugin)) {
            try {
                $rvPost = \App\Plugins\reviews\app\Models\Post::withoutGlobalScopes([VerifiedScope::class, ReviewedScope::class])->find($post->id);
                view()->share('rvPost', $rvPost);
            } catch (\Exception $e) {
            }
        }
        
        // View
        return view('post.details', $data);
    }
    
    /**
     * @param $postId
     * @param SendMessageRequest $request
     * @return $this|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function sendMessage($postId, SendMessageRequest $request)
    {
        // Get Ad
        $post = Post::find($postId);
        if (empty($post)) {
            abort(404);
        }
        
        // Store Message
        $message = new Message([
            'post_id' => $postId,
            'name'    => $request->input('name'),
            'email'   => $request->input('email'),
            'phone'   => $request->input('phone'),
            'message' => $request->input('message'),
        ]);
        $message->save();
        
        // Save and Send user's resume
        $pathToFile = null;
        if ($request->hasFile('filename')) {
            $message->filename = $request->file('filename');
            $message->save();
            
            // Get path of uploaded file
            $pathToFile = public_path($message->filename);
        }
        
        // Send a message to publisher
        try {
            $post->notify(new SellerContacted($post, $message, $pathToFile));
            
            $message = t("Your message has send successfully to :contact_name.", ['contact_name' => $post->contact_name]);
            flash($message)->success();
        } catch (\Exception $e) {
            flash($e->getMessage())->error();
        }
        
        return redirect(config('app.locale') . '/' . slugify($post->title) . '/' . $post->id . '.html');
    }
    
    /**
     * Get similar Posts
     *
     * @param $post
     * @param string $type
     * @return array|null|\stdClass
     */
    private function getSimilarPosts($post, $type = 'location')
    {
        switch ($type) {
            case 'category':
                return $this->getCategorySimilarPosts($post->category_id, $post->id);
                break;
            case 'location':
                return $this->getLocationSimilarPosts($post->city_id, $post->id);
                break;
            default:
                return $this->getLocationSimilarPosts($post->city_id, $post->id);
        }
    }
    
    /**
     * Get similar Posts (Posts in the same Category)
     *
     * @param $categoryId
     * @param int $currentPostId
     * @return array|null|\stdClass
     */
    private function getCategorySimilarPosts($categoryId, $currentPostId = 0)
    {
        $limit = 20;
        $featured = null;
        
        // Get ads from same category
        $reviewedCondition = '';
        if (config('settings.posts_review_activation')) {
            $reviewedCondition = ' AND a.reviewed = 1';
        }
        $sql = 'SELECT DISTINCT a.* ' . '
				FROM ' . table('posts') . ' as a
				INNER JOIN ' . table('categories') . ' as c ON c.id=a.category_id AND c.active=1
				INNER JOIN ' . table('categories') . ' as cp ON cp.id=c.parent_id AND cp.active=1
				WHERE a.country_code = :country_code 
					AND :category_id  IN (c.id, cp.id) 
					AND (a.verified_email=1 AND a.verified_phone=1)
					AND a.archived!=1 
					AND a.deleted_at IS NULL ' . $reviewedCondition . '
					AND a.id != :current_post_id
				ORDER BY a.created_at DESC
				LIMIT 0,' . (int)$limit;
        $bindings = [
            'country_code'    => config('country.code'),
            'category_id'     => $categoryId,
            'current_post_id' => $currentPostId,
        ];
        $posts = DB::select(DB::raw($sql), $bindings);
        
        if (!empty($posts)) {
            shuffle($posts);
            $featured = [
                'title' => t('Similar Ads'),
                'link'  => qsurl(config('app.locale') . '/' . trans('routes.v-search', ['countryCode' => $this->country->get('icode')]), array_merge(Request::except('c'), ['c' => $categoryId])),
                'posts' => $posts,
            ];
            $featured = Arr::toObject($featured);
        }
        
        return $featured;
    }
    
    /**
     * Get Posts in the same Location
     *
     * @param $cityId
     * @param int $currentPostId
     * @return array|null|\stdClass
     */
    private function getLocationSimilarPosts($cityId, $currentPostId = 0)
    {
        $distance = 100; // km OR miles
        $limit = 10;
        $featured = null;
    
        // Get the City
        $city = Cache::remember(config('country.code') . '.city.' . $cityId, $this->cacheExpiration, function () use ($cityId) {
            $city = City::find($cityId);
            return $city;
        });
        
        if (!empty($city)) {
            // Get ads from same location (with radius)
            $reviewedCondition = '';
            if (config('settings.posts_review_activation')) {
                $reviewedCondition = ' AND a.reviewed = 1';
            }
            $sql = 'SELECT a.*, 3959 * acos(cos(radians(' . $city->latitude . ')) * cos(radians(a.lat))'
                . '* cos(radians(a.lon) - radians(' . $city->longitude . '))'
                . '+ sin(radians(' . $city->latitude . ')) * sin(radians(a.lat))) as distance
				FROM ' . table('posts') . ' as a
				INNER JOIN ' . table('categories') . ' as c ON c.id=a.category_id AND c.active=1
				WHERE a.country_code = :country_code 
					AND (a.verified_email=1 AND a.verified_phone=1)
					AND a.archived!=1  ' . $reviewedCondition . '
					AND a.id != :current_post_id
				HAVING distance <= ' . $distance . ' 
				ORDER BY distance ASC, a.created_at DESC 
				LIMIT 0,' . (int)$limit;
            $bindings = [
                'country_code'    => config('country.code'),
                'current_post_id' => $currentPostId,
            ];
            $posts = DB::select(DB::raw($sql), $bindings);
            
            if (!empty($posts)) {
                shuffle($posts);
                $featured = [
                    'title' => t('More ads at :distance :unit around :city', [
                        'distance' => $distance,
                        'unit'     => unitOfLength(config('country.code')),
                        'city'     => $city->name
                    ]),
                    'link'  => qsurl(config('app.locale') . '/' . trans('routes.v-search', ['countryCode' => $this->country->get('icode')]), array_merge(Request::except(['l', 'location']), ['l' => $city->id])),
                    'posts' => $posts,
                ];
                $featured = Arr::toObject($featured);
            }
        }
        
        return $featured;
    }
}
