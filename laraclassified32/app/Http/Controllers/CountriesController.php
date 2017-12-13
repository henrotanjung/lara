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

namespace App\Http\Controllers;

use Illuminate\Support\Facades\View;
use App\Helpers\Localization\Helpers\Country as CountryLocalizationHelper;
use App\Helpers\Localization\Country as CountryLocalization;
use Torann\LaravelMetaTags\Facades\MetaTag;

class CountriesController extends FrontController
{
    /**
     * CountriesController constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

	/**
	 * @return View
	 */
    public function index()
    {
        $data = array();
        
        // Countries
        $countries = CountryLocalizationHelper::transAll(CountryLocalization::getCountries());
        
        // Bootstrap grid view
        $cols = round($countries->count() / 4, 0, PHP_ROUND_HALF_EVEN);
        $cols = ($cols > 0) ? $cols : 1; // Fix array_chunk with 0
        $data['country_cols'] = $countries->chunk($cols)->all();

        // Meta Tags
        MetaTag::set('title', getMetaTag('title', 'countries'));
        MetaTag::set('description', strip_tags(getMetaTag('description', 'countries')));
        MetaTag::set('keywords', getMetaTag('keywords', 'countries'));
        
        return view('countries', $data);
    }
}
