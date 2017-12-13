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

namespace App\Models;


class CategoryField extends BaseModel
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'category_field';
    
    /**
     * The primary key for the model.
     *
     * @var string
     */
    // protected $primaryKey = 'id';
    
    /**
     * Indicates if the model should be timestamped.
     *
     * @var boolean
     */
    public $timestamps = false;
    
    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'category_id',
        'field_id',
        'parent_id',
        'lft',
        'rgt',
        'depth',
    ];
    
    /**
     * The attributes that should be hidden for arrays
     *
     * @var array
     */
    // protected $hidden = [];
    
    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    // protected $dates = [];
    
    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */
    protected static function boot()
    {
        parent::boot();
    }
    
    public function getCategoryHtml()
    {
        $category = Category::transById($this->category_id);
        
        $out = '';
        if (!empty($category)) {
            $currentUrl = preg_replace('#/(search)$#', '', url()->current());
            $editUrl = $currentUrl . '/' . $category->id . '/edit';
            
            $out .= '<a href="' . $editUrl . '">' . $category->name . '</a>';
        } else {
            $out .= '--';
        }
        
        return $out;
    }
    
    public function getFieldHtml()
    {
        $field = Field::transById($this->field_id);
        
        $out = '';
        if (!empty($field)) {
            $currentUrl = preg_replace('#/(search)$#', '', url()->current());
            $editUrl = $currentUrl . '/' . $field->id . '/edit';
            
            $out .= '<a href="' . $editUrl . '" style="float:left;">' . $field->name . '</a>';
    
            if (in_array($field->type, ['select', 'radio', 'checkbox_multiple'])) {
                $optionUrl = url(config('larapen.admin.route_prefix', 'admin') . '/field/' . $field->id . '/option');
                $out .= ' ';
                $out .= '<span style="float:right;">';
                $out .= '<a class="btn btn-xs btn-danger" href="' . $optionUrl . '"><i class="fa fa-cog"></i> ' . ucfirst(__t('options')) . '</a>';
                $out .= '</span>';
            }
        } else {
            $out .= '--';
        }
        
        return $out;
    }
    
    /**
     * Get Fields details
     *
     * @param $categoryId
     * @param null $postId
     * @param null $languageCode (Required for AJAX Requests)
     * @return \Illuminate\Support\Collection
     */
    public static function getFields($categoryId, $postId = null, $languageCode = null)
    {
        $fields = [];
    
        // Get Post's Custom Fields values
        $postFieldsValues = collect([]);
        if (!empty($postId) && trim($postId) != '') {
            $postFieldsValues = self::keyingByFieldId(PostValue::where('post_id', $postId)->get());
        }
        
        // Get Category's fields
        $catFields = self::where('category_id', $categoryId)->orderBy('lft', 'ASC')->get();
        
        if ($catFields->count() > 0) {
            foreach ($catFields as $key => $catField) {
                // Get the Custom Field's details
                $field = Field::transById($catField->field_id, $languageCode);
                if (!empty($field)) {
                    $fields[$key] = $field;
                    
                    // Retrieve the Field's Default value
                    if ($postFieldsValues->count() > 0) {
                        if ($postFieldsValues->has($field->tid)) {
                            $postValue = $postFieldsValues->get($field->tid);
                            if (isset($postValue->value)) {
                                $defaultValue = $postValue->value;
                            } else {
                                if ($field->options->count() > 0) {
                                    $selectedOptions = [];
                                    foreach ($field->options as $option) {
                                        if (isset($postValue[$option->tid])) {
                                            $selectedOptions[$option->tid] = $option;
                                        }
                                    }
                                    $defaultValue = $selectedOptions;
                                } else {
                                    $defaultValue = [];
                                }
                            }
                            
                            $fields[$key]->default = $defaultValue;
                        }
                    }
                    
                }
            }
        }
        
        return collect($fields);
    }
    
    /**
     * @param $values
     * @return \Illuminate\Support\Collection
     */
    private static function keyingByFieldId($values)
    {
        if (empty($values) || $values->count() <= 0) {
            return $values;
        }
        
        $postValues = [];
        foreach ($values as $value) {
            if (!empty($value->option_id)) {
                $postValues[$value->field_id][$value->option_id] = $value;
            } else {
                $postValues[$value->field_id] = $value;
            }
        }
        
        return collect($postValues);
    }
    
    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
    
    public function field()
    {
        return $this->belongsTo(Field::class, 'field_id');
    }
    
    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */
    
    /*
    |--------------------------------------------------------------------------
    | ACCESORS
    |--------------------------------------------------------------------------
    */
    
    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}
