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

use Illuminate\Support\Facades\Auth;

class UserRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return Auth::check();
    }
    
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        // Check if these fields has changed
        $emailChanged = ($this->input('email') != Auth::user()->email);
        $phoneChanged = ($this->input('phone') != Auth::user()->phone);
        $usernameChanged = ($this->has('username') && $this->input('username') != Auth::user()->username);
    
        // Validation Rules
        $rules = [
            'gender'    => 'required|not_in:0',
            'user_type' => 'required|not_in:0',
            'name'      => 'required|max:100',
            'phone'     => 'required|phone:' . $this->input('country', config('country.code')) . ',mobile|max:20',
            'email'     => 'required|email|whitelist_email|whitelist_domain',
            'username'  => 'valid_username|allowed_username|between:3,100',
        ];
        if ($phoneChanged) {
            $rules['phone'] = 'unique:users,phone|' . $rules['phone'];
        }
        if ($emailChanged) {
            $rules['email'] = 'unique:users,email|' . $rules['email'];
        }
        if ($usernameChanged) {
            $rules['username'] = 'required|unique:users,username|' . $rules['username'];
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
