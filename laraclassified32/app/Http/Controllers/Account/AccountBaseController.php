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

namespace App\Http\Controllers\Account;

use App\Http\Controllers\FrontController;
use App\Models\Post;
use App\Models\Message;
use App\Models\Payment;
use App\Models\SavedPost;
use App\Models\SavedSearch;
use App\Models\Scopes\VerifiedScope;
use App\Models\Scopes\ReviewedScope;
use App\Helpers\Localization\Helpers\Country as CountryLocalizationHelper;
use App\Helpers\Localization\Country as CountryLocalization;

abstract class AccountBaseController extends FrontController
{
    public $countries;
    public $myPosts;
    public $archivedPosts;
    public $favouritePosts;
    public $pendingPosts;
    public $messages;
    public $transactions;

    /**
     * AccountBaseController constructor.
     */
    public function __construct()
    {
        parent::__construct();

        // From Laravel 5.3.4 or above
        $this->middleware(function ($request, $next) {
            $this->leftMenuInfo();
            return $next($request);
        });
    }

    public function leftMenuInfo()
    {
        view()->share('pagePath', '');

        $this->countries = CountryLocalizationHelper::transAll(CountryLocalization::getCountries());
        view()->share('countries', $this->countries);

        // My Posts
        $this->myPosts = Post::currentCountry()
            ->where('user_id', $this->user->id)
            ->verified()
			->reviewed()
            ->with('city')
            ->orderBy('id', 'DESC');
        view()->share('countMyPosts', $this->myPosts->count());

        // Archived Posts
        $this->archivedPosts = Post::currentCountry()
            ->where('user_id', $this->user->id)
            ->archived()
            ->with('city')
            ->orderBy('id', 'DESC');
        view()->share('countArchivedPosts', $this->archivedPosts->count());

        // Favourite Posts
        $this->favouritePosts = SavedPost::whereHas('post', function($query) {
                $query->currentCountry();
            })
            ->where('user_id', $this->user->id)
            ->with('post.city')
            ->orderBy('id', 'DESC');
        view()->share('countFavouritePosts', $this->favouritePosts->count());

        // Pending Approval Posts
        $this->pendingPosts = Post::withoutGlobalScopes([VerifiedScope::class, ReviewedScope::class])
            ->currentCountry()
            ->where('user_id', $this->user->id)
            ->unverified()
            ->with('city')
            ->orderBy('id', 'DESC');
        view()->share('countPendingPosts', $this->pendingPosts->count());

        // Save Search
        $savedSearch = SavedSearch::currentCountry()
            ->where('user_id', $this->user->id)
            ->orderBy('id', 'DESC');
        view()->share('countSavedSearch', $savedSearch->count());
        
        // Messages
		$this->messages = Message::whereHas('post', function($query) {
				$query->currentCountry()->whereHas('user', function($query) {
                    $query->where('user_id', $this->user->id);
                });
			})->with('post')
			->orderBy('id', 'DESC');
		view()->share('countMessages', $this->messages->count());
		
		// Payments
		$this->transactions = Payment::whereHas('post', function($query) {
				$query->currentCountry()->whereHas('user', function($query) {
                    $query->where('user_id', $this->user->id);
                });
			})->with(['post', 'paymentMethod'])
			->orderBy('id', 'DESC');
		view()->share('countTransactions', $this->transactions->count());
    }
}
