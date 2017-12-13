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
use Illuminate\Support\Facades\Request;
use App\Http\Requests\Admin\FieldOptionRequest as StoreRequest;
use App\Http\Requests\Admin\FieldOptionRequest as UpdateRequest;

class FieldOptionController extends PanelController
{
    private $fieldId = null;
    
    public function __construct()
    {
        parent::__construct();
    
        // Get the Custom Field's ID
        $this->fieldId = Request::segment(3);
    
        // Get the Custom Field's name
        $field = Field::transById($this->fieldId);
        if (empty($field)) {
            abort(404);
        }
        
        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->xPanel->setModel('App\Models\FieldOption');
        $this->xPanel->setRoute(config('larapen.admin.route_prefix', 'admin') . '/field/' . $field->id . '/option');
        $this->xPanel->setEntityNameStrings(
            __t('option') . ' &rarr; ' . '<strong>' . $field->name . '</strong>',
            __t('options') . ' &rarr; ' . '<strong>' . $field->name . '</strong>'
        );
        $this->xPanel->enableReorder('value', 1);
        $this->xPanel->enableDetailsRow();
        $this->xPanel->orderBy('lft', 'ASC');
    
        $this->xPanel->enableParentEntity();
        $this->xPanel->addClause('where', 'field_id', '=', $field->id);
        $this->xPanel->setParentRoute(config('larapen.admin.route_prefix', 'admin') . '/field');
        $this->xPanel->setParentEntityNameStrings(__t('custom field'), __t('custom fields'));
        $this->xPanel->allowAccess(['reorder', 'details_row', 'parent']);
        
        
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
        $this->xPanel->addColumn([
            'name'  => 'value',
            'label' => __t("Value"),
        ]);
        
        
        // FIELDS
        $this->xPanel->addField([
            'name'  => 'field_id',
            'type'  => 'hidden',
            'value' => $this->fieldId,
        ], 'create');
        $this->xPanel->addField([
            'name'       => 'value',
            'label'      => __t("Value"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t("Value"),
            ],
        ]);
    }
    
    public function store(StoreRequest $request)
    {
        return parent::storeCrud();
    }
    
    public function update(UpdateRequest $request)
    {
        return parent::updateCrud();
    }
}
