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

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Post;
use App\Models\Message;

class SellerContacted extends Mailable
{
    use Queueable, SerializesModels;
    
    public $post;
    public $msg;
    public $pathToFile = null;
    
    /**
     * Create a new message instance.
     *
     * @param Post $post
     * @param Message $msg
     * @param null $pathToFile
     */
    public function __construct(Post $post, Message $msg, $pathToFile = null)
    {
        $this->post = $post;
        $this->msg = $msg;
        $this->pathToFile = $pathToFile;
        
        $this->to($post->email, $post->contact_name);
        $this->replyTo($msg->email, $msg->name);
        $this->subject(trans('mail.post_seller_contacted_title', [
            'title'    => $post->title,
            'app_name' => config('settings.app_name'),
        ]));
    }
    
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // Attachments
        if (!empty($this->pathToFile) and file_exists($this->pathToFile)) {
            return $this->view('emails.post.seller-contacted')->attach($this->pathToFile);
        } else {
            return $this->view('emails.post.seller-contacted');
        }
    }
}
