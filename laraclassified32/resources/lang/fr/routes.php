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

$lcRoutes = [
    /*
    |--------------------------------------------------------------------------
    | Routes Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines are used by the global website.
    |
    */

    'countries' => 'pays',

    'login'    => 'connexion',
    'logout'   => 'deconnexion',
    'register' => 'inscription',

    'page'   => 'page/{slug}.html',
    't-page' => 'page',
    'v-page' => 'page/:slug.html',

    'contact' => 'contact.html',
];

if (config('larapen.core.multi_countries_website')) {
    // Sitemap
    $lcRoutes['sitemap'] = '{countryCode}/plan-du-site.html';
    $lcRoutes['v-sitemap'] = ':countryCode/plan-du-site.html';

    // Latest Ads
    $lcRoutes['search'] = '{countryCode}/recherche';
    $lcRoutes['t-search'] = 'recherche';
    $lcRoutes['v-search'] = ':countryCode/recherche';

    // Search by Sub-Category
    $lcRoutes['search-subCat'] = '{countryCode}/categorie/{catSlug}/{subCatSlug}';
    $lcRoutes['t-search-subCat'] = 'categorie';
    $lcRoutes['v-search-subCat'] = ':countryCode/categorie/:catSlug/:subCatSlug';

    // Search by Category
    $lcRoutes['search-cat'] = '{countryCode}/categorie/{catSlug}';
    $lcRoutes['t-search-cat'] = 'categorie';
    $lcRoutes['v-search-cat'] = ':countryCode/categorie/:catSlug';

    // Search by Location
    $lcRoutes['search-city'] = '{countryCode}/petites-annonces/{city}/{id}';
    $lcRoutes['t-search-city'] = 'petites-annonces';
    $lcRoutes['v-search-city'] = ':countryCode/petites-annonces/:city/:id';

    // Search by User
    $lcRoutes['search-user'] = '{countryCode}/recherche/vendeur/{id}';
    $lcRoutes['t-search-user'] = 'recherche/vendeur';
    $lcRoutes['v-search-user'] = ':countryCode/recherche/vendeur/:id';
	
	$lcRoutes['search-username'] = '{countryCode}/profile/{username}';
	$lcRoutes['v-search-username'] = ':countryCode/profile/:username';
} else {
    // Sitemap
    $lcRoutes['sitemap'] = 'plan-du-site.html';
    $lcRoutes['v-sitemap'] = 'plan-du-site.html';

    // Latest Ads
    $lcRoutes['search'] = 'recherche';
    $lcRoutes['t-search'] = 'recherche';
    $lcRoutes['v-search'] = 'recherche';

    // Search by Sub-Category
    $lcRoutes['search-subCat'] = 'categorie/{catSlug}/{subCatSlug}';
    $lcRoutes['t-search-subCat'] = 'categorie';
    $lcRoutes['v-search-subCat'] = 'categorie/:catSlug/:subCatSlug';

    // Search by Category
    $lcRoutes['search-cat'] = 'categorie/{catSlug}';
    $lcRoutes['t-search-cat'] = 'categorie';
    $lcRoutes['v-search-cat'] = 'categorie/:catSlug';

    // Search by Location
    $lcRoutes['search-city'] = 'petites-annonces/{city}/{id}';
    $lcRoutes['t-search-city'] = 'petites-annonces';
    $lcRoutes['v-search-city'] = 'petites-annonces/:city/:id';

    // Search by User
    $lcRoutes['search-user'] = 'recherche/vendeur/{id}';
    $lcRoutes['t-search-user'] = 'recherche/vendeur';
    $lcRoutes['v-search-user'] = 'recherche/vendeur/:id';
	
	$lcRoutes['search-username'] = 'profile/{username}';
	$lcRoutes['v-search-username'] = 'profile/:username';
}

return $lcRoutes;
