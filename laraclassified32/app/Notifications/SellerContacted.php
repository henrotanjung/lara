<?php
/**
 * LaraClassified - Geo Classified Ads Software
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

namespace App\Notifications;

use App\Models\Message;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Messages\NexmoMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Models\Post;
use NotificationChannels\Twilio\TwilioChannel;
use NotificationChannels\Twilio\TwilioSmsMessage;

class SellerContacted extends Notification implements ShouldQueue
{
    use Queueable;
    
    protected $post;
    protected $msg;
    protected $pathToFile;
    
    public function __construct(Post $post, Message $msg, $pathToFile = null)
    {
        $this->post = $post;
        $this->msg = $msg;
        $this->pathToFile = $pathToFile;
    }
    
    public function via($notifiable)
    {
        if (!empty($this->post->email)) {
            if (config('settings.sms_message_activation') == 1) {
                if (!empty($this->post->phone) && $this->post->phone_hidden != 1) {
                    if (config('settings.sms_driver') == 'twilio') {
                        return ['mail', TwilioChannel::class];
                    }
                    
                    return ['mail', 'nexmo'];
                }
                
                return ['mail'];
            } else {
                return ['mail'];
            }
        } else {
            if (config('settings.sms_driver') == 'twilio') {
                return [TwilioChannel::class];
            }
            
            return ['nexmo'];
        }
    }
    
    public function toMail($notifiable)
    {
        return (new \App\Mail\SellerContacted($this->post, $this->msg, $this->pathToFile));
    }
    
    public function toNexmo($notifiable)
    {
        return (new NexmoMessage())->content($this->smsMessage())->unicode();
    }
    
    public function toTwilio($notifiable)
    {
        return (new TwilioSmsMessage())->content($this->smsMessage());
    }
    
    protected function smsMessage()
    {
        return trans('sms.post_seller_contacted_content', [
            'app_name' => config('app.name'),
            'postId'   => $this->msg->post_id,
            'message'  => str_limit(strip_tags($this->msg->message), 50),
        ]);
    }
}
