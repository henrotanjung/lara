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

return [

    /*
     |--------------------------------------------------------------------------
     | The item's ID on CodeCanyon
     |--------------------------------------------------------------------------
     |
     */

    'item_id' => '16458425',

    /*
     |--------------------------------------------------------------------------
     | Default ads picture for SERP
     |--------------------------------------------------------------------------
     |
     */

    'purchase_code_checker_url' => 'http://api.bedigit.com/envato.php?purchase_code=',

    /*
     |--------------------------------------------------------------------------
     | Demo domain
     |--------------------------------------------------------------------------
     |
     */

    'demo_domain' => 'bedigit.com',

    /*
     |--------------------------------------------------------------------------
     | Default Logo
     |--------------------------------------------------------------------------
     |
     */

    'logo' => 'app/default/logo.png',

    /*
     |--------------------------------------------------------------------------
     | Default Favicon
     |--------------------------------------------------------------------------
     |
     */

    'favicon' => 'app/default/ico/favicon.png',

    /*
     |--------------------------------------------------------------------------
     | Default ads picture & Default ads pictures sizes
     |--------------------------------------------------------------------------
     |
     */

    'picture' => [
        'default' => 'app/default/picture.jpg',
        'size' => [
            'width'  => 1000,
            'height' => 1000,
        ],
        'quality' => 100,
        'resize' => [
            'small'  => '120x90',
            'medium' => '320x240',
            'big'    => '816x460',
            'large'  => '1000x1000'
        ],
    ],

    /*
     |--------------------------------------------------------------------------
     | Default user profile picture (Unused for now)
     |--------------------------------------------------------------------------
     |
     */

    'photo' => '',
    
    /*
     |--------------------------------------------------------------------------
     | Countries SVG maps folder & URL base
     |--------------------------------------------------------------------------
     |
     */

    'maps' => [
        'path'    => public_path('images/maps') . '/',
        'urlBase' => 'images/maps/',
    ],

    /*
     |--------------------------------------------------------------------------
     | Set as default language the browser language (Unused for now)
     |--------------------------------------------------------------------------
     |
     */

    'detect_browser_language' => false,

    /*
     |--------------------------------------------------------------------------
     | Optimize your links for SEO (for International website)
     |--------------------------------------------------------------------------
     |
     */

    'multi_countries_website' => env('MULTI_COUNTRIES_SEO_LINKS', false),

    /*
     |--------------------------------------------------------------------------
     | Force links to use the HTTPS protocol
     |--------------------------------------------------------------------------
     |
     */

    'force_https' => env('FORCE_HTTPS', false),

    /*
     |--------------------------------------------------------------------------
     | Plugins Path & Namespace
     |--------------------------------------------------------------------------
     |
     */

    'plugin' => [
        'path'      => app_path('Plugins') . '/',
        'namespace' => '\\App\Plugins\\',
    ],

    /*
     |--------------------------------------------------------------------------
     | Managing User's Fields (Phone, Email & Username)
     |--------------------------------------------------------------------------
     |
     | When 'disable.phone' and 'disable.email' are TRUE,
     | the script use the email field by default.
     |
     */

    'disable' => [
        'phone'    => env('DISABLE_PHONE', true),
        'email'    => env('DISABLE_EMAIL', false),
        'username' => env('DISABLE_USERNAME', true),
    ],

    /*
     |--------------------------------------------------------------------------
     | Disallowing usernames that match reserved names
     |--------------------------------------------------------------------------
     |
     */

    'reserved_usernames' => [
        'admin',
        'api',
        'profile',
        //...
    ],
    
    /*
     |--------------------------------------------------------------------------
     | Custom Prefix for the new locations (Administratives Divisions) Codes
     |--------------------------------------------------------------------------
     |
     */
    
    'location_code_prefix' => 'Z',
    
    /*
     |--------------------------------------------------------------------------
     | Mile use countries (By default, the script use Kilometer)
     |--------------------------------------------------------------------------
     |
     */
    
    'mile_use_countries' => ['US','UK'],

];
