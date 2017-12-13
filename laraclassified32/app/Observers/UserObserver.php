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

namespace App\Observer;

use App\Models\Post;
use App\Models\Scopes\ReviewedScope;
use App\Models\Scopes\VerifiedScope;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UserObserver
{
    /**
     * Listen to the Entry deleting event.
     *
     * @param  User $user
     * @return void
     */
    public function deleting(User $user)
    {
        // Delete all user's ads with dependencies
        $posts = Post::withoutGlobalScopes([VerifiedScope::class, ReviewedScope::class])->where('user_id', $user->id)->get();
        if ($posts->count() > 0) {
            foreach ($posts as $post) {
                $post->delete();
            }
        }
    
        // Delete all user's messages
        $user->messages()->delete();
    
        // Delete all favourite ads
        DB::table('saved_posts')->where('user_id', $user->id)->delete();
    
        // Delete all saved search
        $user->savedSearch()->delete();
    
        // Check and load Reviews plugin
        $reviewsPlugin = load_installed_plugin('reviews');
        if (!empty($reviewsPlugin)) {
            try {
                // Delete the reviews of this User
                $reviews = \App\Plugins\reviews\app\Models\Review::where('user_id', $user->id)->get();
                if ($reviews->count() > 0) {
                    foreach ($reviews as $review) {
                        $review->delete();
                    }
                }
            } catch (\Exception $e) {
            }
        }
    }
}
