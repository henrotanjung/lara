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

namespace App\Http\Controllers\Admin;

use App\Models\Field;
use Larapen\Admin\app\Http\Controllers\PanelController;
use App\Models\Category;
use Illuminate\Support\Facades\Request;
use App\Http\Requests\Admin\CategoryFieldRequest as StoreRequest;
use App\Http\Requests\Admin\CategoryFieldRequest as UpdateRequest;

class CategoryFieldController extends PanelController
{
    public $parentEntity = null;
    private $categoryId = null;
    private $fieldId = null;
    
    public function __construct()
    {
        parent::__construct();
    
        // Parents Entities
        $parentEntities = ['category', 'field'];
    
        // Get the parent Entity slug
        $this->parentEntity = Request::segment(2);
        if (!in_array($this->parentEntity, $parentEntities)) {
            abort(404);
        }
    
        // Category => CategoryField
        if ($this->parentEntity == 'category') {
            $this->categoryId = Request::segment(3);
    
            // Get Parent Category's name
            $category = Category::transById($this->categoryId);
            if (empty($category)) {
                abort(404);
            }
        }
    
        // Field => CategoryField
        if ($this->parentEntity == 'field') {
            $this->fieldId = Request::segment(3);
        
            // Get Field's name
            $field = Field::transById($this->fieldId);
            if (empty($field)) {
                abort(404);
            }
        }
        
        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->xPanel->setModel('App\Models\CategoryField');
        $this->xPanel->enableAjaxTable();
        $this->xPanel->enableParentEntity();
        //$this->xPanel->denyAccess(['update']);
    
        // Category => CategoryField
        if ($this->parentEntity == 'category') {
            $this->xPanel->setRoute(config('larapen.admin.route_prefix', 'admin') . '/category/' . $category->id . '/field');
            $this->xPanel->setEntityNameStrings(
                __t('custom field') . ' &rarr; ' . '<strong>' . $category->name . '</strong>',
                __t('custom fields') . ' &rarr; ' . '<strong>' . $category->name . '</strong>'
            );
            $this->xPanel->enableReorder('field.name', 1);
            $this->xPanel->orderBy('lft', 'ASC');
            $this->xPanel->addClause('where', 'category_id', '=', $category->id);
            $this->xPanel->setParentRoute(config('larapen.admin.route_prefix', 'admin') . '/category');
            $this->xPanel->setParentEntityNameStrings(__t('category'), __t('categories'));
            $this->xPanel->allowAccess(['reorder', 'parent']);
        }
    
        // Field => CategoryField
        if ($this->parentEntity == 'field') {
            $this->xPanel->setRoute(config('larapen.admin.route_prefix', 'admin') . '/field/' . $field->id . '/category');
            $this->xPanel->setEntityNameStrings(
                '<strong>' . $field->name . '</strong> ' . __t('custom field') . ' &rarr; ' . __t('category'),
                '<strong>' . $field->name . '</strong> ' . __t('custom fields') . ' &rarr; ' . __t('categories')
            );
            $this->xPanel->addClause('where', 'field_id', '=', $field->id);
            $this->xPanel->setParentRoute(config('larapen.admin.route_prefix', 'admin') . '/field');
            $this->xPanel->setParentEntityNameStrings(__t('custom field'), __t('custom fields'));
            $this->xPanel->allowAccess(['parent']);
        }
        
        
        /*
        |--------------------------------------------------------------------------
        | COLUMNS AND FIELDS
        |--------------------------------------------------------------------------
        */
        // COLUMNS
        $this->xPanel->addColumn([
            'name'  => 'id',
            'label' => "ID",
        ]);
    
        // Category => CategoryField
        if ($this->parentEntity == 'category') {
            $this->xPanel->addColumn([
                'name'          => 'field_id',
                'label'         => ucfirst(__t("custom field")),
                'type'          => 'model_function',
                'function_name' => 'getFieldHtml',
            ]);
        }
    
        // Field => CategoryField
        if ($this->parentEntity == 'field') {
            $this->xPanel->addColumn([
                'name'          => 'category_id',
                'label'         => __t("Category"),
                'type'          => 'model_function',
                'function_name' => 'getCategoryHtml',
            ]);
        }
        
        
        // FIELDS
        // Category => CategoryField
        if ($this->parentEntity == 'category') {
            $this->xPanel->addField([
                'name'  => 'category_id',
                'type'  => 'hidden',
                'value' => $this->categoryId,
            ], 'create');
            $this->xPanel->addField([
                'name'        => 'field_id',
                'label'       => ucfirst(__t("Select a Custom field")),
                'type'        => 'select2_from_array',
                'options'     => $this->fields($this->fieldId),
                'allows_null' => false,
                'hint'        => __t('Note') . ': ' . __t("The custom fields can be applied only for the parent categories."),
            ]);
        }
        
        // Field => CategoryField
        if ($this->parentEntity == 'field') {
            $this->xPanel->addField([
                'name'  => 'field_id',
                'type'  => 'hidden',
                'value' => $this->fieldId,
            ], 'create');
            $this->xPanel->addField([
                'name'        => 'category_id',
                'label'       => __t("Select a Category"),
                'type'        => 'select2_from_array',
                'options'     => $this->categories($this->categoryId),
                'allows_null' => false,
                'hint'        => __t('Note') . ': ' . __t("The custom fields can be applied only for the parent categories."),
            ]);
        }
    }
    
    public function store(StoreRequest $request)
    {
        return parent::storeCrud();
    }
    
    public function update(UpdateRequest $request)
    {
        return parent::updateCrud();
    }
    
    private function fields($selectedEntryId)
    {
        $entries = Field::trans()->orderBy('name')->get();
    
        return $this->getTranslatedArray($entries, $selectedEntryId);
    }
    
    private function categories($selectedEntryId)
    {
        $entries = Category::trans()->where('parent_id', 0)->orderBy('lft')->get();
        
        return $this->getTranslatedArray($entries, $selectedEntryId);
    }
}
