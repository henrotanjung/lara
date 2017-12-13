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

    'countries' => 'paises',

    'login'    => 'login',
    'logout'   => 'cerrar-sesion',
    'register' => 'registrate',

    'page'   => 'pagina/{slug}.html',
    't-page' => 'pagina',
    'v-page' => 'pagina/:slug.html',

    'contact' => 'contacto.html',
];

if (config('larapen.core.multi_countries_website')) {
    // Sitemap
    $lcRoutes['sitemap'] = '{countryCode}/mapa-del-sitio.html';
    $lcRoutes['v-sitemap'] = ':countryCode/mapa-del-sitio.html';

    // Latest Ads
    $lcRoutes['search'] = '{countryCode}/busqueda';
    $lcRoutes['t-search'] = 'busqueda';
    $lcRoutes['v-search'] = ':countryCode/busqueda';

    // Search by Sub-Category
    $lcRoutes['search-subCat'] = '{countryCode}/categoria/{catSlug}/{subCatSlug}';
    $lcRoutes['t-search-subCat'] = 'categoria';
    $lcRoutes['v-search-subCat'] = ':countryCode/categoria/:catSlug/:subCatSlug';

    // Search by Category
    $lcRoutes['search-cat'] = '{countryCode}/categoria/{catSlug}';
    $lcRoutes['t-search-cat'] = 'categoria';
    $lcRoutes['v-search-cat'] = ':countryCode/categoria/:catSlug';

    // Search by Location
    $lcRoutes['search-city'] = '{countryCode}/anuncios-gratuitos/{city}/{id}';
    $lcRoutes['t-search-city'] = 'anuncios-gratuitos';
    $lcRoutes['v-search-city'] = ':countryCode/anuncios-gratuitos/:city/:id';

    // Search by User
    $lcRoutes['search-user'] = '{countryCode}/busqueda/vendedor/{id}';
    $lcRoutes['t-search-user'] = 'busqueda/vendedor';
    $lcRoutes['v-search-user'] = ':countryCode/busqueda/vendedor/:id';
	
	$lcRoutes['search-username'] = '{countryCode}/profile/{username}';
	$lcRoutes['v-search-username'] = ':countryCode/profile/:username';
} else {
    // Sitemap
    $lcRoutes['sitemap'] = 'mapa-del-sitio.html';
    $lcRoutes['v-sitemap'] = 'mapa-del-sitio.html';

    // Latest Ads
    $lcRoutes['search'] = 'busqueda';
    $lcRoutes['t-search'] = 'busqueda';
    $lcRoutes['v-search'] = 'busqueda';

    // Search by Sub-Category
    $lcRoutes['search-subCat'] = 'categoria/{catSlug}/{subCatSlug}';
    $lcRoutes['t-search-subCat'] = 'categoria';
    $lcRoutes['v-search-subCat'] = 'categoria/:catSlug/:subCatSlug';

    // Search by Category
    $lcRoutes['search-cat'] = 'categoria/{catSlug}';
    $lcRoutes['t-search-cat'] = 'categoria';
    $lcRoutes['v-search-cat'] = 'categoria/:catSlug';

    // Search by Location
    $lcRoutes['search-city'] = 'anuncios-gratuitos/{city}/{id}';
    $lcRoutes['t-search-city'] = 'anuncios-gratuitos';
    $lcRoutes['v-search-city'] = 'anuncios-gratuitos/:city/:id';

    // Search by User
    $lcRoutes['search-user'] = 'busqueda/vendedor/{id}';
    $lcRoutes['t-search-user'] = 'busqueda/vendedor';
    $lcRoutes['v-search-user'] = 'busqueda/vendedor/:id';
	
	$lcRoutes['search-username'] = 'profile/{username}';
	$lcRoutes['v-search-username'] = 'profile/:username';
}

return $lcRoutes;