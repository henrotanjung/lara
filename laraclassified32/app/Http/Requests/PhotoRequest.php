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

class PhotoRequest extends Request
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [];
    
        // Require 'pictures' if exists
        if ($this->hasFile('pictures')) {
            $files = $this->file('pictures');
            foreach ($files as $key => $file) {
                if (!empty($file)) {
                    $rules['pictures.' . $key] = 'required|image|mimes:' . getUploadFileTypes('image') . '|max:' . (int)config('settings.upload_max_file_size', 1000);
                }
            }
        }
        
        return $rules;
    }
    
    /**
     * @return array
     */
    public function messages()
    {
        $messages = [];
    
        if ($this->hasFile('pictures')) {
            $files = $this->file('pictures');
            foreach ($files as $key => $file) {
                $messages['pictures.' . $key . '.required'] = t('The picture #:key is required.', ['key' => $key]);
                $messages['pictures.' . $key . '.image'] = t('The picture #:key must be image.', ['key' => $key]);
                $messages['pictures.' . $key . '.max'] = t('The picture #:key may not be greater than :max.', [
                    'key' => $key,
                    'max' => (int)config('settings.upload_max_file_size', 1000)
                ]);
            }
        }
        
        return $messages;
    }
    
    /**
     * Get the proper failed validation response for the request.
     *
     * @param array $errors
     * @return \Illuminate\Http\JsonResponse|\Symfony\Component\HttpFoundation\Response
     */
    public function response(array $errors)
    {
        if ($this->expectsJson()) {
            // NOTE: 'bootstrap-fileinput' need 'errorkeys' element
            return response()->json(['error' => t('Error found'), 'errorkeys' => $errors], 422);
        }
        
        return parent::response($errors);
    }
}
