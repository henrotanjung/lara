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

namespace App\Http\Controllers\Search\Traits;

use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Request;
use App\Helpers\Search;

trait TitleTrait
{
    /**
     * Get Search Title
     *
     * @return string
     */
    public function getTitle()
    {
        $title = '';

        // Init.
        $title .= t('Free ads');

        // Keyword
        if (Input::has('q')) {
            $title .= ' ' . t('for') . ' ';
            $title .= '"' . rawurldecode(Input::get('q')) . '"';
        }

        // Category
        if (isset($this->isCatSearch) && $this->isCatSearch) {
            if (isset($this->cat) && !empty($this->cat)) {
                // SubCategory
                if (isset($this->isSubCatSearch) && $this->isSubCatSearch) {
                    if (isset($this->subCat) && !empty($this->subCat)) {
                        $title .= ' ' . $this->subCat->name . ',';
                    }
                }

                $title .= ' ' . $this->cat->name;
            }
        }

        // User
        if (isset($this->isUserSearch) && $this->isUserSearch) {
            if (isset($this->sUser) && !empty($this->sUser)) {
                $title .= ' ' . t('of') . ' ';
                $title .= $this->sUser->name;
            }
        }

        // Location
        if ((isset($this->isCitySearch) && $this->isCitySearch) || (isset($this->isAdminSearch) && $this->isAdminSearch)) {
            if (Input::has('r') && !Input::has('l')) {
                // Administrative Division
                if (isset($this->admin) && !empty($this->admin)) {
                    $title .= ' ' . t('inside') . ' ';
                    $title .= $this->admin->name;
                }
            } else {
                // City
                if (isset($this->city) && !empty($this->city)) {
                    $title .= ' ' . t('at') . ' ';
                    $title .= $this->city->name;
                }
            }
        }

        // Country
        $title .= ', ' . $this->country->get('name');

        view()->share('title', $title);

        return $title;
    }

    /**
     * Get Search HTML Title
     *
     * @return string
     */
    public function getHtmlTitle()
    {
        $fullUrl = url(Request::getRequestUri());
        $tmpExplode = explode('?', $fullUrl);
        $fullUrlNoParams = current($tmpExplode);

        // Title
        $htmlTitle = '';

        // Init.
        $htmlTitle .= '<a href="'. lurl(trans('routes.v-search', ['countryCode' => $this->country->get('icode')])) . '" class="current">';
        $htmlTitle .= '<span>' . t('All ads') . '</span>';
        $htmlTitle .= '</a>';

        // Location
        if ((isset($this->isCitySearch) && $this->isCitySearch) || (isset($this->isAdminSearch) && $this->isAdminSearch)) {
            if (Input::has('l') || Input::has('r')) {
                $searchUrl = qsurl($fullUrlNoParams, Input::except(['l', 'r', 'location']));
            } else {
                $searchUrl = lurl(trans('routes.v-search', ['countryCode' => $this->country->get('icode')]));
                $searchUrl = qsurl($searchUrl, Input::except(['l', 'r', 'location']));
            }

            if (Input::has('r') && !Input::has('l')) {
                // Administrative Division
                if (isset($this->admin) && !empty($this->admin)) {
                    $htmlTitle .= ' ' . t('inside') . ' ';
                    $htmlTitle .= '<a rel="nofollow" class="jobs-s-tag" href="' . $searchUrl . '">';
                    //$htmlTitle .= str_limit(rawurldecode(Input::get('r')), 50);
                    $htmlTitle .= $this->admin->name;
                    $htmlTitle .= '</a>';
                }
            } else {
                // City
                if (isset($this->city) && !empty($this->city)) {
                    $htmlTitle .= ' ' . t('within') . ' ';
                    $htmlTitle .= '<a rel="nofollow" class="jobs-s-tag" href="' . $searchUrl . '">';
                    $htmlTitle .= t(':distance :unit around :city', [
                        'distance' => Search::$distance,
                        'unit'     => unitOfLength(config('country.code')),
                        'city'     => $this->city->name]);
                    $htmlTitle .= '</a>';
                }
            }
        }

        // Category
        if (isset($this->isCatSearch) && $this->isCatSearch) {
            if (isset($this->cat) && !empty($this->cat)) {
                // SubCategory
                if (isset($this->isSubCatSearch) && $this->isSubCatSearch) {
                    if (isset($this->subCat) && !empty($this->subCat)) {
                        $htmlTitle .= ' ' . t('in') . ' ';

                        if (Input::has('sc')) {
                            $searchUrl = qsurl($fullUrlNoParams, Input::except(['sc']));
                        } else {
                            $searchUrl = lurl(trans('routes.v-search-cat', [
                                'countryCode' => $this->country->get('icode'),
                                'catSlug'     => $this->cat->slug
                            ]));
                            $searchUrl = qsurl($searchUrl, Input::except(['sc']));
                        }

                        $htmlTitle .= '<a rel="nofollow" class="jobs-s-tag" href="' . $searchUrl . '">';
                        $htmlTitle .= $this->subCat->name;
                        $htmlTitle .= '</a>';
                    }
                }

                $htmlTitle .= ' ' . t('in') . ' ';

                if (Input::has('c')) {
                    $searchUrl = qsurl($fullUrlNoParams, Input::except(['c']));
                } else {
                    $searchUrl = lurl(trans('routes.v-search', [
                        'countryCode' => $this->country->get('icode')
                    ]));
                    $searchUrl = qsurl($searchUrl, Input::except(['c']));
                }

                $htmlTitle .= '<a rel="nofollow" class="jobs-s-tag" href="' . $searchUrl . '">';
                $htmlTitle .= $this->cat->name;
                $htmlTitle .= '</a>';
            }
        }

        // Date
        if (Input::has('postedDate') && isset($this->dates) && isset($this->dates->{Input::get('postedDate')})) {
            $htmlTitle .= t('last');
            $htmlTitle .= '<a rel="nofollow" class="jobs-s-tag" href="' . qsurl($fullUrlNoParams, Input::except(['postedDate'])) . '">';
            $htmlTitle .= $this->dates->{Input::get('postedDate')};
            $htmlTitle .= '</a>';
        }

        // Condition
        if (Input::has('new') && isset($this->conditions) && isset($this->conditions->{Input::get('new')})) {
            $htmlTitle .= '<a rel="nofollow" class="jobs-s-tag" href="' . qsurl($fullUrlNoParams, Input::except(['new'])) . '">';
            $htmlTitle .= $this->conditions->{Input::get('new')};
            $htmlTitle .= '</a>';
        }

        view()->share('htmlTitle', $htmlTitle);

        return $htmlTitle;
    }

    /**
     * Get Breadcrumbs Tabs
     *
     * @return array
     */
    public function getBreadcrumb()
    {
        $bcTab = [];

        // City
        if (isset($this->city) && !empty($this->city)) {
            $title = t('in :distance :unit around :city', [
                'distance' => Search::$distance,
                'unit'     => unitOfLength(config('country.code')),
                'city'     => $this->city->name
            ]);
            $bcTab[] = [
                'name'     => (isset($this->cat) ? t('All ads') . ' ' . $title : $this->city->name),
                'url'      => lurl(trans('routes.v-search-city', [
                    'countryCode' => $this->country->get('icode'),
                    'city'        => slugify($this->city->name),
                    'id'          => $this->city->id
                ])),
                'position' => (isset($this->cat) ? 5 : 3),
                'location' => true
            ];
        }

        // Admin
        if (isset($this->admin) && !empty($this->admin)) {
            $title = $this->admin->name;
            $bcTab[] = [
                'name'     => (isset($this->cat) ? t('All ads') . ' ' . $title : $this->admin->name),
                'url'      => lurl(trans('routes.t-search')) . '?d=' . $this->country->get('icode') . '&r=' . $this->admin->name,
                'position' => (isset($this->cat) ? 5 : 3),
                'location' => true
            ];
        }

        // Category
        if (isset($this->cat) && !empty($this->cat)) {
            if (isset($this->subCat) && !empty($this->subCat)) {
                $title = t('in :category', ['category' => $this->subCat->name]);
                $bcTab[] = [
                    'name'     => $this->cat->name,
                    'url'      => lurl(trans('routes.v-search-cat', ['countryCode' => $this->country->get('icode'), 'catSlug' => $this->cat->slug])),
                    'position' => 3
                ];
                $bcTab[] = [
                    'name'     => (isset($this->city) ? $this->subCat->name : t('All ads') . ' ' . $title),
                    'url'      => lurl(trans('routes.v-search-subCat', [
                        'countryCode' => $this->country->get('icode'),
                        'catSlug'     => $this->cat->slug,
                        'subCatSlug'  => $this->subCat->slug
                    ])),
                    'position' => 4
                ];
            } else {
                $title = t('in :category', ['category' => $this->cat->name]);
                $bcTab[] = [
                    'name'     => (isset($this->city) ? $this->cat->name : t('All ads') . ' ' . $title),
                    'url'      => lurl(trans('routes.v-search-cat', ['countryCode' => $this->country->get('icode'), 'catSlug' => $this->cat->slug])),
                    'position' => 3
                ];
            }
        }

        // Sort by Position
        $bcTab = array_values(array_sort($bcTab, function ($value) {
            return $value['position'];
        }));

        view()->share('bcTab', $bcTab);

        return $bcTab;
    }
}
