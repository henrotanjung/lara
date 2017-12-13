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

use App\Models\Package;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class PaymentNotification extends Mailable
{
    use Queueable, SerializesModels;

    public $payment;
    public $package;
    public $post;

    /**
     * PaymentNotification constructor.
     * @param $payment
     * @param $post
     * @param $adminUser
     */
    public function __construct($payment, $post, $adminUser)
    {
        $this->payment = $payment;
        $this->package = Package::find($payment->package_id);
        $this->post = $post;

        $this->to($adminUser->email, $adminUser->name);
        $this->subject(trans('mail.payment_notification_title'));
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.payment.notification');
    }
}
