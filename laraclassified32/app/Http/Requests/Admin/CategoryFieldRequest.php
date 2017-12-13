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

namespace App\Http\Requests\Admin;

class CategoryFieldRequest extends Request
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [
            'category_id' => 'required|not_in:0',
            'field_id'    => 'required|not_in:0',
        ];
    
        if ($this->segment(2) == 'category') {
            $rules['category_id'] = $rules['category_id'] . '|unique:category_field,category_id,NULL,id,field_id,' . $this->field_id;
        }
    
        if ($this->segment(2) == 'field') {
            $rules['field_id'] = $rules['field_id'] . '|unique:category_field,field_id,NULL,id,category_id,' . $this->category_id;
        }
        
        return $rules;
    }
    
    /**
     * @return array
     */
    public function messages()
    {
        $messages = [
            'category_id.required' => __t('The :field is required.', ['field' => __t('category')]),
            'category_id.not_in'   => __t('The :field is required. And cannot be 0.', ['field' => __t('category')]),
            'field_id.required'    => __t('The :field is required.', ['field' => __t('custom field')]),
            'field_id.not_in'      => __t('The :field is required. And cannot be 0.', ['field' => __t('custom field')]),
        ];
    
        if ($this->segment(2) == 'category') {
            $messages['category_id.unique'] = __t('The :field_1 have this :field_2 assigned already.', [
                'field_1' => __t('category'),
                'field_2' => __t('custom field'),
            ]);
        }
    
        if ($this->segment(2) == 'field') {
            $messages['field_id.unique'] = __t('The :field_1 is already assign to this :field_2.', [
                'field_1' => __t('custom field'),
                'field_2' => __t('category'),
            ]);
        }
        
        return $messages;
    }
}
