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

namespace App\Http\Middleware;

use Closure;
use Mews\Purifier\Facades\Purifier;

class TransformInput
{
	/**
	 * @param $request
	 * @param Closure $next
	 * @return mixed
	 */
    public function handle($request, Closure $next)
    {
        if (in_array(strtolower($request->method()), ['post', 'put', 'patch'])) {
            $this->proccessBeforeValidation($request);
        }
        
        return $next($request);
    }

	/**
	 * @param $request
	 */
    public function proccessBeforeValidation($request)
    {
        $input = $request->all();

        // description
        if ($request->has('description')) {
            if (config('settings.simditor_wysiwyg') || config('settings.ckeditor_wysiwyg')) {
                $input['description'] = Purifier::clean($request->input('description'));
            } else {
                $input['description'] = str_clean($request->input('description'));
            }
        }

        // price
        if ($request->has('price')) {
            $input['price'] = str_replace(',', '.', $request->input('price'));
            $input['price'] = preg_replace('/[^0-9\.]/', '', $input['price']);
        }
	
		// phone
		if ($request->has('phone')) {
			$input['phone'] = phoneFormatInt($request->input('phone'), $request->input('country', session('country_code')));
		}
	
		// login (phone)
		if ($request->has('login')) {
			$loginField = getLoginField($request->input('login'));
			if ($loginField == 'phone') {
				$input['login'] = phoneFormatInt($request->input('login'), $request->input('country', session('country_code')));
			}
		}
        
        $request->replace($input);
    }
}
