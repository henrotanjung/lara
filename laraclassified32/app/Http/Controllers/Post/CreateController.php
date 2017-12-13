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

use App\Helpers\Ip;
use App\Http\Controllers\Auth\Traits\VerificationTrait;
use App\Http\Controllers\Post\Traits\CustomFieldTrait;
use App\Http\Requests\PostRequest;
use App\Models\Post;
use App\Models\PostType;
use App\Models\Category;
use App\Models\Package;
use App\Models\PaymentMethod;
use App\Models\City;
use App\Models\Scopes\VerifiedScope;
use App\Models\User;
use App\Http\Controllers\FrontController;
use App\Models\Scopes\ReviewedScope;
use App\Mail\PostNotification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Schema;
use Torann\LaravelMetaTags\Facades\MetaTag;
use App\Helpers\Localization\Helpers\Country as CountryLocalizationHelper;
use App\Helpers\Localization\Country as CountryLocalization;
use App\Http\Controllers\Post\Traits\EditTrait;


class CreateController extends FrontController
{
    use EditTrait, VerificationTrait, CustomFieldTrait;
    
    public $data;
    
    /**
     * CreateController constructor.
     */
    public function __construct()
    {
        parent::__construct();
        
        // Check if guests can post Ads
        if (config('settings.activation_guests_can_post') != '1') {
            $this->middleware('auth')->only(['getForm', 'postForm']);
        }
        
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
        // References
        $data = [];
        
        // Get Countries
        $data['countries'] = CountryLocalizationHelper::transAll(CountryLocalization::getCountries());
        view()->share('countries', $data['countries']);
        
        // Get Categories
        $cacheId = 'categories.parentId.0.with.children' . config('app.locale');
        $data['categories'] = Cache::remember($cacheId, $this->cacheExpiration, function () {
            $categories = Category::trans()->where('parent_id', 0)->with([
                'children' => function ($query) {
                    $query->trans();
                },
            ])->orderBy('lft')->get();
            return $categories;
        });
        view()->share('categories', $data['categories']);
        
        // Get Post Types
        $cacheId = 'postTypes.all.' . config('app.locale');
        $data['postTypes'] = Cache::remember($cacheId, $this->cacheExpiration, function () {
            $postTypes = PostType::trans()->orderBy('lft')->get();
            return $postTypes;
        });
        view()->share('postTypes', $data['postTypes']);
        
        // Count Packages
        $data['countPackages'] = Package::trans()->count();
        view()->share('countPackages', $data['countPackages']);
        
        // Count Payment Methods
        $data['countPaymentMethods'] = PaymentMethod::where(function ($query) {
            $query->whereRaw('FIND_IN_SET("' . $this->country->get('icode') . '", LOWER(countries)) > 0')
                ->orWhereNull('countries');
        })->count();
        view()->share('countPaymentMethods', $data['countPaymentMethods']);
        
        // Save common's data
        $this->data = $data;
    }
    
    /**
     * New Post's Form.
     *
     * @param null $tmpToken
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getForm($tmpToken = null)
    {
        // Check possible Update
        if (!empty($tmpToken)) {
            session()->keep(['message']);
            
            return $this->getUpdateForm($tmpToken);
        }
        
        // Meta Tags
        MetaTag::set('title', getMetaTag('title', 'create'));
        MetaTag::set('description', strip_tags(getMetaTag('description', 'create')));
        MetaTag::set('keywords', getMetaTag('keywords', 'create'));
        
        // Create
        return view('post.create');
    }
    
    /**
     * Store a new Post.
     *
     * @param null $tmpToken
     * @param PostRequest $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function postForm($tmpToken = null, PostRequest $request)
    {
        // Check possible Update
        if (!empty($tmpToken)) {
            session()->keep(['message']);
            
            return $this->postUpdateForm($tmpToken, $request);
        }
        
        // Get the Post's City
        $city = City::find($request->input('city', 0));
        if (empty($city)) {
            flash(t("Posting Ads was disabled for this time. Please try later. Thank you."))->error();
            
            return back()->withInput();
        }
        
        // Conditions to Verify User's Email or Phone
        if (Auth::check()) {
            $emailVerificationRequired = config('settings.email_verification') == 1 && $request->has('email') && $request->input('email') != $this->user->email;
            $phoneVerificationRequired = config('settings.phone_verification') == 1 && $request->has('phone') && $request->input('phone') != $this->user->phone;
        } else {
            $emailVerificationRequired = config('settings.email_verification') == 1 && $request->has('email');
            $phoneVerificationRequired = config('settings.phone_verification') == 1 && $request->has('phone');
        }
        
        // Post Data
        $postInfo = [
            'country_code'   => config('country.code'),
            'user_id'        => (Auth::check()) ? Auth::user()->id : 0,
            'category_id'    => $request->input('category'),
            'post_type_id'   => $request->input('post_type'),
            'title'          => $request->input('title'),
            'description'    => $request->input('description'),
            'price'          => $request->input('price'),
            'negotiable'     => $request->input('negotiable'),
            'contact_name'   => $request->input('contact_name'),
            'email'          => $request->input('email'),
            'phone'          => $request->input('phone'),
            'phone_hidden'   => $request->input('phone_hidden'),
            'city_id'        => $request->input('city'),
            'lat'            => $city->latitude,
            'lon'            => $city->longitude,
            'ip_addr'        => Ip::get(),
            'tmp_token'      => md5(microtime() . mt_rand(100000, 999999)),
            'verified_email' => 1,
            'verified_phone' => 1,
        ];
        print (Auth::check()) ? Auth::user()->id : 0;
        print $postInfo['user_id'];
        // Added in release 1.1
        if (Schema::hasColumn('posts', 'address')) {
            $postInfo['address'] = $request->input('address');
        }
        
        // Email verification key generation
        if ($emailVerificationRequired) {
            $postInfo['email_token'] = md5(microtime() . mt_rand());
            $postInfo['verified_email'] = 0;
        }
        
        // Mobile activation key generation
        if ($phoneVerificationRequired) {
            $postInfo['phone_token'] = mt_rand(100000, 999999);
            $postInfo['verified_phone'] = 0;
        }
        
        // Save the Post into database
        $post = new Post($postInfo);
        $post->save();
        
        // Save ad Id in session (for next steps)
        session(['tmpPostId' => $post->id]);
        
        // Custom Fields
        $this->createPostFieldsValues($post, $request);
        
        // Get Next URL
        if (!in_array($request->input('parent_type'), ['job-offer', 'job-search'])) {
            $nextStepUrl = config('app.locale') . '/posts/create/' . $post->tmp_token . '/photos';
        } else {
            if (
                isset($this->data['countPackages']) &&
                isset($this->data['countPaymentMethods']) &&
                $this->data['countPackages'] > 0 &&
                $this->data['countPaymentMethods'] > 0
            ) {
                $nextStepUrl = config('app.locale') . '/posts/create/' . $post->tmp_token . '/packages';
            } else {
                $request->session()->flash('message', t('Your ad has been created.'));
                $nextStepUrl = config('app.locale') . '/posts/create/' . $post->tmp_token . '/finish';
            }
        }
        
        // Send Admin Notification Email
        if (config('settings.admin_email_notification') == 1) {
            try {
                // Get all admin users
                $admins = User::where('is_admin', 1)->get();
                if ($admins->count() > 0) {
                    foreach ($admins as $admin) {
                        Mail::send(new PostNotification($post, $admin));
                    }
                }
            } catch (\Exception $e) {
                flash($e->getMessage())->error();
            }
        }
        
        // Send Email Verification message
        if ($emailVerificationRequired) {
            // Save the Next URL before verification
            session(['itemNextUrl' => $nextStepUrl]);
            
            // Send
            $this->sendVerificationEmail($post);
            
            // Show the Re-send link
            $this->showReSendVerificationEmailLink($post, 'post');
        }
        
        // Send Phone Verification message
        if ($phoneVerificationRequired) {
            // Save the Next URL before verification
            session(['itemNextUrl' => $nextStepUrl]);
            
            // Send
            $this->sendVerificationSms($post);
            
            // Show the Re-send link
            $this->showReSendVerificationSmsLink($post, 'post');
            
            // Go to Phone Number verification
            $nextStepUrl = config('app.locale') . '/verify/post/phone/';
        }
        
        // Redirection
        return redirect($nextStepUrl);
    }
    
    /**
     * Confirmation
     *
     * @param $tmpToken
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     */
    public function finish($tmpToken)
    {
        // Keep Success Message for the page refreshing
        session()->keep(['message']);
        if (!session()->has('message')) {
            return redirect(config('app.locale') . '/');
        }
        
        // Clear the steps wizard
        if (session()->has('tmpPostId')) {
            // Get the Post
            $post = Post::withoutGlobalScopes([VerifiedScope::class, ReviewedScope::class])->where('id', session('tmpPostId'))->where('tmp_token', $tmpToken)->first();
            if (empty($post)) {
                abort(404);
            }
            
            // Apply finish actions
            $post->tmp_token = null;
            $post->save();
            session()->forget('tmpPostId');
        }
        
        // Redirect to the Post,
        // - If User is logged
        // - Or if Email and Phone verification option is not activated
        if (Auth::check() || (config('settings.email_verification') != 1 && config('settings.phone_verification') != 1)) {
            if (!empty($post)) {
                flash(session('message'))->success();
                
                return redirect(config('app.locale') . '/' . slugify($post->title) . '/' . $post->id . '.html');
            }
        }
        
        // Meta Tags
        MetaTag::set('title', session('message'));
        MetaTag::set('description', session('message'));
        
        return view('post.finish');
    }
}
