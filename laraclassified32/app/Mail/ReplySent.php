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

namespace App\Mail;

use App\Models\Message;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ReplySent extends Mailable
{
    use Queueable, SerializesModels;

    public $message;
	public $replyForm;

    /**
     * Create a new message instance.
     *
	 * @param Message $message
	 * @param $replyForm
	 */
    public function __construct(Message $message, $replyForm)
    {
        $this->message = $message;
		$this->replyForm = $replyForm;

        $this->to($message->email, $message->name);
        $this->replyTo($replyForm->sender_email, $replyForm->sender_name);
        $this->subject(trans('mail.reply_form_title', [
            'adTitle'   => $replyForm->ad_title,
            'app_name'  => config('settings.app_name')
        ]));
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.reply-sent');
    }
}
