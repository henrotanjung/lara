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

namespace App\Http\Requests;

class RegisterRequest extends Request
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [
            'name'     => 'required|mb_between:2,200',
            'country'  => 'sometimes|required|not_in:0',
            'phone'    => 'max:20',
            'email'    => 'max:100|whitelist_email|whitelist_domain',
            'password' => 'required|between:6,60|dumbpwd|confirmed',
            'term'     => 'accepted',
        ];
    
        // Email
        if ($this->has('email')) {
            $rules['email'] = 'email|unique:users,email|' . $rules['email'];
        }
        if (isEnabledField('email')) {
            if (isEnabledField('phone') and isEnabledField('email')) {
                $rules['email'] = 'required_without:phone|' . $rules['email'];
            } else {
                $rules['email'] = 'required|' . $rules['email'];
            }
        }
    
        // Phone
        if ($this->has('phone')) {
            $rules['phone'] = 'phone:' . $this->input('country', config('country.code')) . ',mobile|unique:users,phone|' . $rules['phone'];
        }
        if (isEnabledField('phone')) {
            if (isEnabledField('phone') and isEnabledField('email')) {
                $rules['phone'] = 'required_without:email|' . $rules['phone'];
            } else {
                $rules['phone'] = 'required|' . $rules['phone'];
            }
        }
    
        // Username
        if (isEnabledField('username')) {
            $rules['username'] = ($this->has('username')) ? 'valid_username|allowed_username|between:3,100|unique:users,username' : '';
        }
    
        // Recaptcha
        if (config('settings.activation_recaptcha')) {
            $rules['g-recaptcha-response'] = 'required';
        }
        
        return $rules;
    }
    
    /**
     * @return array
     */
    public function messages()
    {
        $messages = [];
        
        return $messages;
    }
}
