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

use App\Models\Category;
use App\Models\Message;
use App\Models\Picture;
use App\Models\Post;
use App\Models\PostValue;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Input;

class PostObserver
{
    /**
     * Listen to the Entry updating event.
     *
     * @param  Post $post
     * @return void
     */
    public function updating(Post $post)
    {
        // Get the Post's Category
        $cat = Category::find(Input::get('parent'));
        if (!empty($cat)) {
            // Pictures files cleanup by category type
            if (in_array($cat->type, ['job-offer', 'job-search'])) {
                $pictures = Picture::where('post_id', $post->id)->get();
                if ($pictures->count() > 0) {
                    foreach ($pictures as $picture) {
                        $picture->delete();
                    }
                }
            }
        }
    }
    
    /**
     * Listen to the Entry deleting event.
     *
     * @param  Post $post
     * @return void
     */
    public function deleting(Post $post)
    {
        // Delete all the Post's Custom Fields Values
        $postValues = PostValue::where('post_id', $post->id)->get();
        if ($postValues->count() > 0) {
            foreach ($postValues as $postValue) {
                $postValue->delete();
            }
        }
    
        // Delete all messages
        $messages = Message::where('post_id', $post->id)->get();
        if ($messages->count() > 0) {
            foreach ($messages as $message) {
                $message->delete();
            }
        }
    
        // Delete all entries by users in database
        $post->savedByUsers()->delete();
    
        // Delete all pictures entries in database
        $pictures = Picture::where('post_id', $post->id)->get();
        if ($pictures->count() > 0) {
            foreach ($pictures as $picture) {
                $picture->delete();
            }
        }
    
        // Delete the payments of this Post
        $post->onePayment()->delete();
    
        // Check and load Reviews plugin
        $reviewsPlugin = load_installed_plugin('reviews');
        if (!empty($reviewsPlugin)) {
            try {
                // Delete the reviews of this Post
                $reviews = \App\Plugins\reviews\app\Models\Review::where('post_id', $post->id)->get();
                if ($reviews->count() > 0) {
                    foreach ($reviews as $review) {
                        $review->delete();
                    }
                }
            } catch (\Exception $e) {
            }
        }
    }
    
    /**
     * Listen to the Entry saved event.
     *
     * @param  Post $post
     * @return void
     */
    public function saved(Post $post)
    {
        // Removing Entries from the Cache
        $this->clearCache($post);
    }
    
    /**
     * Listen to the Entry deleted event.
     *
     * @param  Post $post
     * @return void
     */
    public function deleted(Post $post)
    {
        // Removing Entries from the Cache
        $this->clearCache($post);
    }
    
    /**
     * Removing the Entity's Entries from the Cache
     *
     * @param $post
     */
    private function clearCache($post)
    {
        Cache::forget($post->country_code . '.sitemaps.posts.xml');
        Cache::forget($post->country_code . '.home.getPosts.sponsored');
        Cache::forget($post->country_code . '.home.getPosts.latest');
    }
}
