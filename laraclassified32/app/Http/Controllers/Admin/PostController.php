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

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Auth\Traits\VerificationTrait;
use Larapen\Admin\app\Http\Controllers\PanelController;
use App\Models\PostType;
use App\Models\Category;
use Illuminate\Support\Facades\Input;
use App\Http\Requests\Admin\PostRequest as StoreRequest;
use App\Http\Requests\Admin\PostRequest as UpdateRequest;

class PostController extends PanelController
{
    use VerificationTrait;
    
    public function __construct()
    {
        parent::__construct();

        /*
        |--------------------------------------------------------------------------
        | BASIC CRUD INFORMATION
        |--------------------------------------------------------------------------
        */
        $this->xPanel->setModel('App\Models\Post');
        $this->xPanel->setRoute(config('larapen.admin.route_prefix', 'admin') . '/post');
        $this->xPanel->setEntityNameStrings(__t('ad'), __t('ads'));
        $this->xPanel->enableAjaxTable();
        $this->xPanel->denyAccess(['create']);
        $this->xPanel->orderBy('created_at', 'DESC');

        // Filters
        if (Input::has('active')) {
            if (Input::get('active') == 0) {
                $this->xPanel->addClause('where', 'verified_email', '=', 0);
                $this->xPanel->addClause('orWhere', 'verified_phone', '=', 0);
                if (config('settings.posts_review_activation')) {
                    $this->xPanel->addClause('orWhere', 'reviewed', '=', 0);
                }
            }
            if (Input::get('active') == 1) {
                $this->xPanel->addClause('where', 'verified_email', '=', 1);
                $this->xPanel->addClause('where', 'verified_phone', '=', 1);
                if (config('settings.posts_review_activation')) {
                    $this->xPanel->addClause('where', 'reviewed', '=', 1);
                }
            }
        }

        /*
        |--------------------------------------------------------------------------
        | COLUMNS AND FIELDS
        |--------------------------------------------------------------------------
        */
        // COLUMNS
        $this->xPanel->addColumn([
            'name'  => 'created_at',
            'label' => __t("Date"),
            'type'  => 'datetime',
        ]);
        $space = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
        $this->xPanel->addColumn([
            'name'          => 'title',
            'label'         => __t("Title") . $space,
            'type'          => 'model_function',
            'function_name' => 'getTitleHtml',
        ]);
        $this->xPanel->addColumn([
            'name'          => 'price', // Put unused field column
            'label'         => __t("Picture"),
            'type'          => 'model_function',
            'function_name' => 'getPictureHtml',
        ]);
        $this->xPanel->addColumn([
            'name'  => 'contact_name',
            'label' => __t("User Name"),
        ]);
        $this->xPanel->addColumn([
            'name'          => 'city_id',
            'label'         => __t("City"),
            'type'          => 'model_function',
            'function_name' => 'getCityHtml',
        ]);
        $this->xPanel->addColumn([
            'name'          => 'country_code',
            'label'         => __t("Country"),
            'type'          => 'model_function',
            'function_name' => 'getCountryHtml',
        ]);
        $this->xPanel->addColumn([
            'name'          => 'verified_email',
            'label'         => __t("Verified Email"),
            'type'          => 'model_function',
            'function_name' => 'getVerifiedEmailHtml',
        ]);
        $this->xPanel->addColumn([
            'name'          => 'verified_phone',
            'label'         => __t("Verified Phone"),
            'type'          => 'model_function',
            'function_name' => 'getVerifiedPhoneHtml',
        ]);
        if (config('settings.posts_review_activation')) {
            $this->xPanel->addColumn([
                'name'          => 'reviewed',
                'label'         => __t("Reviewed"),
                'type'          => 'model_function',
                'function_name' => 'getReviewedHtml',
            ]);
        }


        // FIELDS
        $this->xPanel->addField([
            'label'       => __t("Category"),
            'name'        => 'category_id',
            'type'        => 'select2_from_array',
            'options'     => $this->categories(),
            'allows_null' => false,
        ]);
        $this->xPanel->addField([
            'name'       => 'title',
            'label'      => __t("Title"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t("Title"),
            ],
        ]);
        $this->xPanel->addField([
            'name'       => 'description',
            'label'      => __t("Description"),
            'type'       => (config('settings.simditor_wysiwyg')) ? 'simditor' : ((!config('settings.simditor_wysiwyg') && config('settings.ckeditor_wysiwyg')) ? 'ckeditor' : 'textarea'),
            'attributes' => [
                'placeholder' => __t("Description"),
                'id'          => 'description',
                'rows'        => 10,
            ],
        ]);
        $this->xPanel->addField([
            'name'       => 'price',
            'label'      => __t("Price"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t('Enter a Price (or Salary)'),
            ],
        ]);
        $this->xPanel->addField([
            'name'  => 'negotiable',
            'label' => __t("Negotiable Price"),
            'type'  => 'checkbox',
        ]);
        $this->xPanel->addField([
            'label'     => __t("Pictures"),
            'name'      => 'pictures', // Entity method
            'entity'    => 'pictures', // Entity method
            'attribute' => 'filename',
            'type'      => 'read_images',
            'disk'      => 'uploads',
        ]);
        $this->xPanel->addField([
            'label'       => __t("Post Type"),
            'name'        => 'post_type_id',
            'type'        => 'select2_from_array',
            'options'     => $this->postType(),
            'allows_null' => false,
        ]);
        $this->xPanel->addField([
            'name'       => 'contact_name',
            'label'      => __t("User Name"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t("User Name"),
            ],
        ]);
        $this->xPanel->addField([
            'name'       => 'email',
            'label'      => __t("User Email"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t("User Email"),
            ],
        ]);
        $this->xPanel->addField([
            'name'       => 'phone',
            'label'      => __t("User Phone"),
            'type'       => 'text',
            'attributes' => [
                'placeholder' => __t('User Phone'),
            ],
        ]);
        $this->xPanel->addField([
            'name'  => 'phone_hidden',
            'label' => __t("Hide seller phone"),
            'type'  => 'checkbox',
        ]);
        $this->xPanel->addField([
            'name'  => 'verified_email',
            'label' => __t("Verified Email"),
            'type'  => 'checkbox',
        ]);
        $this->xPanel->addField([
            'name'  => 'verified_phone',
            'label' => __t("Verified Phone"),
            'type'  => 'checkbox',
        ]);
        if (config('settings.posts_review_activation')) {
            $this->xPanel->addField([
                'name'  => 'reviewed',
                'label' => __t("Reviewed"),
                'type'  => 'checkbox',
            ]);
        }
        $this->xPanel->addField([
            'name'  => 'featured',
            'label' => __t("Featured"),
            'type'  => 'checkbox',
        ]);
        $this->xPanel->addField([
            'name'  => 'archived',
            'label' => __t("Archived"),
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

    public function postType()
    {
        $entries = PostType::trans()->get();
    
        return $this->getTranslatedArray($entries);
    }

    public function categories()
    {
        $entries = Category::trans()->where('parent_id', 0)->orderBy('lft')->get();
        if ($entries->count() <= 0) {
            return [];
        }

        $tab = [];
        foreach ($entries as $entry) {
            $tab[$entry->tid] = $entry->name;

            $subEntries = Category::trans()->where('parent_id', $entry->id)->orderBy('lft')->get();
            if (!empty($subEntries)) {
                foreach ($subEntries as $subEntrie) {
                    $tab[$subEntrie->tid] = "---| " . $subEntrie->name;
                }
            }
        }

        return $tab;
    }
}
