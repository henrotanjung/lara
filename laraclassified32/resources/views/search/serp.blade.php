{{--
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
--}}
<?php
	$fullUrl = url(\Illuminate\Support\Facades\Request::getRequestUri());
	$tmpExplode = explode('?', $fullUrl);
	$fullUrlNoParams = current($tmpExplode);
?>
@extends('layouts.master')

@section('search')
	@parent
	@include('search.inc.form')
	@include('search.inc.breadcrumbs')
	@include('search.inc.categories')
	@include('layouts.inc.advertising.top')
@endsection

@section('content')
	<div class="main-container">
		<div class="container">
			<div class="row">

				<!-- Sidebar -->
                @if (config('settings.serp_left_sidebar'))
                    @include('search.inc.sidebar')
                    <?php $contentColSm = 'col-sm-9'; ?>
                @else
                    <?php $contentColSm = 'col-sm-12'; ?>
                @endif

				<!-- Content -->
				<div class="{{ $contentColSm }} page-content col-thin-left">
					<div class="category-list">
						<div class="tab-box">

							<!-- Nav tabs -->
							<ul id="postType" class="nav nav-tabs add-tabs" role="tablist">
                                <?php
                                $liClass = '';
                                $spanClass = 'alert-danger';
                                if (!Request::has('type') or Request::get('type') == '') {
                                    $liClass = 'class="active"';
                                    $spanClass = 'progress-bar-danger';
                                }
                                ?>
								<li {!! $liClass !!}>
									<a href="{!! qsurl($fullUrlNoParams, Request::except(['page', 'type'])) !!}" role="tab" data-toggle="tab">
										{{ t('All Ads') }} <span class="badge {!! $spanClass !!}">{{ $count->get('all') }}</span>
									</a>
								</li>
                                @if (!empty($postTypes))
                                    @foreach ($postTypes as $postType)
                                        <?php
                                            $postTypeUrl = qsurl($fullUrlNoParams, array_merge(Request::except(['page']), ['type' => $postType->tid]));
                                            $postTypeCount = ($count->has($postType->tid)) ? $count->get($postType->tid) : 0;
                                        ?>
                                        @if (Request::has('type') && Request::get('type') == $postType->tid)
                                            <li class="active">
                                                <a href="{!! $postTypeUrl !!}" role="tab" data-toggle="tab">
                                                    {{ $postType->name }}
                                                    <span class="badge progress-bar-danger">
                                                        {{ $postTypeCount }}
                                                    </span>
                                                </a>
                                            </li>
                                        @else
                                            <li>
                                                <a href="{!! $postTypeUrl !!}" role="tab" data-toggle="tab">
                                                    {{ $postType->name }}
                                                    <span class="badge alert-danger">
                                                        {{ $postTypeCount }}
                                                    </span>
                                                </a>
                                            </li>
                                        @endif
                                    @endforeach
                                @endif
							</ul>
							<div class="tab-filter" style="padding-top: 6px; padding-right: 6px;">
								<select id="orderBy" class="selecter" data-style="btn-select" data-width="auto">
									<option value="{!! qsurl($fullUrlNoParams, Request::except(['orderBy', 'distance'])) !!}">{{ t('Sort by') }}</option>
									<option{{ (Request::get('orderBy')=='priceAsc') ? ' selected="selected"' : '' }} value="{!! qsurl($fullUrlNoParams, array_merge(Request::except('orderBy'), ['orderBy'=>'priceAsc'])) !!}">{{ t('Price : Low to High') }}</option>
									<option{{ (Request::get('orderBy')=='priceDesc') ? ' selected="selected"' : '' }} value="{!! qsurl($fullUrlNoParams, array_merge(Request::except('orderBy'), ['orderBy'=>'priceDesc'])) !!}">{{ t('Price : High to Low') }}</option>
									<option{{ (Request::get('orderBy')=='relevance') ? ' selected="selected"' : '' }} value="{!! qsurl($fullUrlNoParams, array_merge(Request::except('orderBy'), ['orderBy'=>'relevance'])) !!}">{{ t('Relevance') }}</option>
									<option{{ (Request::get('orderBy')=='date') ? ' selected="selected"' : '' }} value="{!! qsurl($fullUrlNoParams, array_merge(Request::except('orderBy'), ['orderBy'=>'date'])) !!}">{{ t('Date') }}</option>
									@if (isset($isCitySearch) and $isCitySearch)
										<option{{ (Request::get('distance')==100) ? ' selected="selected"' : '' }} value="{!! qsurl($fullUrlNoParams, array_merge(Request::except('distance'), ['distance'=>100])) !!}">{{ t('Around :distance :unit', ['distance' => 100, 'unit' => unitOfLength()]) }}</option>
										<option{{ (Request::get('distance')==300) ? ' selected="selected"' : '' }} value="{!! qsurl($fullUrlNoParams, array_merge(Request::except('distance'), ['distance'=>300])) !!}">{{ t('Around :distance :unit', ['distance' => 300, 'unit' => unitOfLength()]) }}</option>
										<option{{ (Request::get('distance')==500) ? ' selected="selected"' : '' }} value="{!! qsurl($fullUrlNoParams, array_merge(Request::except('distance'), ['distance'=>500])) !!}">{{ t('Around :distance :unit', ['distance' => 500, 'unit' => unitOfLength()]) }}</option>
									@endif
								</select>
							</div>

						</div>

						<div class="listing-filter hidden-xs">
							<div class="pull-left col-sm-10 col-xs-12">
								<div class="breadcrumb-list text-center-xs">
									{!! (isset($htmlTitle)) ? $htmlTitle : '' !!}
								</div>
                                <div style="clear:both;"></div>
							</div>
                            
							@if ($posts->getCollection()->count() > 0)
								<div class="pull-right col-xs-2 text-right listing-view-action">
									<span class="list-view"><i class="icon-th"></i></span>
									<span class="compact-view"><i class="icon-th-list"></i></span>
									<span class="grid-view active"><i class="icon-th-large"></i></span>
								</div>
							@endif

							<div style="clear:both"></div>
						</div>

						<div class="adds-wrapper">
							@include('search.inc.posts')
						</div>

						<div class="tab-box save-search-bar text-center">
							@if (Request::has('q') and Request::get('q') != '' and $count->get('all') > 0)
								<a name="{!! qsurl($fullUrlNoParams, Request::except(['_token', 'location'])) !!}" id="saveSearch"
								   count="{{ $count->get('all') }}">
									<i class="icon-star-empty"></i> {{ t('Save Search') }}
								</a>
							@else
								<a href="#"> &nbsp; </a>
							@endif
						</div>
					</div>

					<div class="pagination-bar text-center">
						{!! $posts->appends(Request::except('page'))->render() !!}
					</div>

					<div class="post-promo text-center" style="margin-bottom: 30px;">
						<h2> {{ t('Do you get anything for sell ?') }} </h2>
						<h5>{{ t('Sell your products and services online FOR FREE. It\'s easier than you think !') }}</h5>
						<a href="{{ lurl('posts/create') }}" class="btn btn-lg btn-border btn-post btn-danger">{{ t('Start Now!') }}</a>
					</div>

				</div>
				
				<div style="clear:both;"></div>

				<!-- Advertising -->
				@include('layouts.inc.advertising.bottom')

			</div>
		</div>
	</div>
@endsection

@section('modal_location')
	@include('layouts.inc.modal.location')
@endsection

@section('after_scripts')
	<script>
		/* Default view (See in /js/script.js) */
		@if ($count->get('all') > 0)
			@if (config('settings.serp_display_mode') == '.grid-view')
				gridView('.grid-view');
        	@elseif (config('settings.serp_display_mode') == '.list-view')
        		listView('.list-view');
        	@elseif (config('settings.serp_display_mode') == '.compact-view')
        		compactView('.compact-view');
        	@else
        		gridView('.grid-view');
        	@endif
		@else
    		listView('.list-view');
		@endif
		/* Save the Search page display mode */
        var searchDisplayMode = readCookie('searchDisplayModeCookie');
        if (!searchDisplayMode) {
            createCookie('searchDisplayModeCookie', '{{ config('settings.serp_display_mode', '.grid-view') }}', 7);
        }
		
		/* Favorites Translation */
        var lang = {
            labelSavePostSave: "{!! t('Save ad') !!}",
            labelSavePostRemove: "{!! t('Remove favorite') !!}",
            loginToSavePost: "{!! t('Please log in to save the Ads.') !!}",
            loginToSaveSearch: "{!! t('Please log in to save your search.') !!}",
            confirmationSavePost: "{!! t('Post saved in favorites successfully !') !!}",
            confirmationRemoveSavePost: "{!! t('Post deleted from favorites successfully !') !!}",
            confirmationSaveSearch: "{!! t('Search saved successfully !') !!}",
            confirmationRemoveSaveSearch: "{!! t('Search deleted successfully !') !!}"
        };
		
		$(document).ready(function () {
			$('#postType a').click(function (e) {
				e.preventDefault();
				var goToUrl = $(this).attr('href');
				redirect(goToUrl);
			});
			$('#orderBy').change(function () {
				var goToUrl = $(this).val();
				redirect(goToUrl);
			});
		});
	</script>
@endsection
