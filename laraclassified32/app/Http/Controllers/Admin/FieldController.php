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

use Larapen\Admin\app\Http\Controllers\PanelController;
use App\Http\Requests\Admin\FieldRequest as StoreRequest;
use App\Http\Requests\Admin\FieldRequest as UpdateRequest;

class FieldController extends PanelController
{
    public function __construct()
    {
        parent::__construct();
        
        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->xPanel->setModel('App\Models\Field');
        
        $this->xPanel->setRoute(config('larapen.admin.route_prefix', 'admin') . '/field');
        $this->xPanel->setEntityNameStrings(__t('custom field'), __t('custom fields'));
        $this->xPanel->enableDetailsRow();
        $this->xPanel->allowAccess(['details_row']);
        
        
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
            'name'          => 'name',
            'label'         => __t("Name"),
            'type'          => 'model_function',
            'function_name' => 'getNameHtml',
        ]);
        $this->xPanel->addColumn([
            'name'  => 'type',
            'label' => __t("Type"),
        ]);
        $this->xPanel->addColumn([
            'name'          => 'active',
            'label'         => __t("Active"),
            'type'          => 'model_function',
            'function_name' => 'getActiveHtml',
        ]);
        
        
        // FIELDS
        $this->xPanel->addField([
            'name'  => 'belongs_to',
            'type'  => 'hidden',
            'value' => 'posts',
        ]);
        $this->xPanel->addField([
            'name'       => 'name',
            'label'      => __t("Name"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t("Name"),
            ],
        ]);
        $this->xPanel->addField([
            'name'  => 'type',
            'label' => __t("Type"),
            'type'  => 'enum',
        ]);
        $this->xPanel->addField([
            'name'       => 'max',
            'label'      => __t("Field Length"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t("Field Length"),
            ],
        ]);
        $this->xPanel->addField([
            'name'       => 'default',
            'label'      => __t("Default value"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t("Default value"),
            ],
        ]);
        $this->xPanel->addField([
            'name'  => 'required',
            'label' => __t("Required"),
            'type'  => 'checkbox',
        ]);
        $this->xPanel->addField([
            'name'  => 'active',
            'label' => __t("Active"),
            'type'  => 'checkbox',
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
