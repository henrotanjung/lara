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
@extends('layouts.master')

<?php
// Phone
$phone_post = substr_replace($post->phone, 'xxx',9);

$phone = TextToImage::make($phone_post, IMAGETYPE_PNG, ['backgroundColor' => '#2ECC71', 'color' => '#FFFFFF']);
$phone_show = TextToImage::make($post->phone, IMAGETYPE_PNG, ['backgroundColor' => '#2ECC71', 'color' => '#FFFFFF']);

?>

@section('content')
	{!! csrf_field() !!}
	<input type="hidden" id="post_id" value="{{ $post->id }}">
	<div class="main-container">

		@if (Session::has('flash_notification'))
			<div class="container" style="margin-bottom: -10px; margin-top: -10px;">
				<div class="row">
					<div class="col-lg-12">
						@include('flash::message')
					</div>
				</div>
			</div>
			<?php Session::forget('flash_notification.message'); ?>
		@endif

		@include('layouts.inc.advertising.top')

		<div class="container">
			<ol class="breadcrumb pull-left">
				<li><a href="{{ lurl('/') }}"><i class="icon-home fa"></i></a></li>
				<li><a href="{{ lurl('/') }}">{{ $country->get('name') }}</a></li>
				<li>
					<a href="{{ lurl(trans('routes.v-search-cat', ['countryCode' => $country->get('icode'), 'catSlug' => $parentCat->slug])) }}">
						{{ $parentCat->name }}
					</a>
				</li>
				@if ($parentCat->id != $cat->id)
				<li>
					<a href="{{ lurl(trans('routes.v-search-subCat',
					[
					'countryCode' => $country->get('icode'),
					'catSlug'     => $parentCat->slug,
					'subCatSlug'  => $cat->slug
					])) }}">
						{{ $cat->name }}
					</a>
				</li>
				@endif
				<li class="active">{{ str_limit($post->title, 70) }}</li>
			</ol>
			<div class="pull-right backtolist">
                <a href="{{ URL::previous() }}">
                    <i class="fa fa-angle-double-left"></i> {{ t('Back to Results') }}
                </a>
            </div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-9 page-content col-thin-right">
					<div class="inner inner-box ads-details-wrapper">
						<h2 class="enable-long-words">
							<strong>
								<a href="{{ lurl(slugify($post->title).'/'.$post->id.'.html') }}" title="{{ mb_ucfirst($post->title) }}">
									{{ mb_ucfirst($post->title) }}
                                </a>
                            </strong>
							<small class="label label-default adlistingtype">{{ $postType->name }}</small>
							@if ($post->featured==1 and isset($package) and !empty($package))
                                <i class="icon-ok-circled tooltipHere" style="color: {{ $package->ribbon }};" title="" data-placement="right"
								   data-toggle="tooltip" data-original-title="{{ $package->short_name }}"></i>
                            @endif
						</h2>
						<span class="info-row">
							<span class="date"><i class=" icon-clock"> </i> {{ $post->created_at_ta }} </span> -&nbsp;
							<span class="category">{{ $parentCat->name }}</span> -&nbsp;
							<span class="item-location"><i class="fa fa-map-marker"></i> {{ $post->city->name }} </span> -&nbsp;
							<span class="category"><i class="icon-eye-3"></i> {{ $post->visits }} {{ trans_choice('global.count_views', getPlural($post->visits)) }}</span>
						</span>
						
						<div class="ads-image">
							@if (!in_array($parentCat->type, ['not-salable']))
								<h1 class="pricetag">
									@if ($post->price > 0)
										{!! \App\Helpers\Number::money($post->price) !!}
									@else
										{!! \App\Helpers\Number::money(' --') !!}
									@endif
								</h1>
							@endif
							@if (count($post->pictures) > 0)
								<ul class="bxslider">
									@foreach($post->pictures as $key => $image)
										<li><img src="{{ resize($image->filename, 'big') }}" alt="img"></li>
									@endforeach
								</ul>
								<div class="product-view-thumb-wrapper">
									<ul id="bx-pager" class="product-view-thumb">
									@foreach($post->pictures as $key => $image)
										<li>
											<a class="thumb-item-link" data-slide-index="{{ $key }}" href="">
												<img src="{{ resize($image->filename, 'small') }}" alt="img">
											</a>
										</li>
									@endforeach
									</ul>
								</div>
							@else
								<ul class="bxslider">
									<li><img src="{{ resize(config('larapen.core.picture.default'), 'big') }}" alt="img"></li>
								</ul>
								<div class="product-view-thumb-wrapper">
									<ul id="bx-pager" class="product-view-thumb">
										<li>
											<a class="thumb-item-link" data-slide-index="0" href="">
												<img src="{{ resize(config('larapen.core.picture.default'), 'small') }}" alt="img">
											</a>
										</li>
									</ul>
								</div>
							@endif
						</div>
						<!--ads-image-->
						
						
						@if (isset($reviewsPlugin) and !empty($reviewsPlugin))
							@if (view()->exists('reviews::ratings-single'))
								@include('reviews::ratings-single')
							@endif
						@endif
						

						<div class="ads-details">
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#tab-details" data-toggle="tab"><h4>{{ t('Ad\'s Details') }}</h4></a>
								</li>
								@if (isset($reviewsPlugin) and !empty($reviewsPlugin))
									<li>
										<a href="#tab-{{ $reviewsPlugin->name }}" data-toggle="tab">
											<h4>
												{{ trans('reviews::messages.Reviews') }}
												@if (isset($rvPost) and !empty($rvPost))
												({{ $rvPost->rating_count }})
												@endif
											</h4>
										</a>
									</li>
								@endif
							</ul>
							
							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane active" id="tab-details">
									<div class="row" style="padding: 10px;">
										<div class="ads-details-info col-md-12 col-sm-12 col-xs-12 enable-long-words from-wysiwyg">
											
											<!-- Location -->
											<div class="detail-line-lite col-md-6 col-sm-6 col-xs-6">
												<div>
													<span><i class="fa fa-map-marker"></i> {{ t('Location') }}: </span>
													<span>
														<a href="{!! lurl(trans('routes.v-search-city', [
															'countryCode' => $country->get('icode'),
															'city' 		  => slugify($post->city->name),
															'id' 		  => $post->city->id
															])) !!}">
																{{ $post->city->name }}
															</a>
													</span>
												</div>
											</div>
											@if (!in_array($parentCat->type, ['not-salable']))
												<!-- Price / Salary -->
												<div class="detail-line-lite col-md-6 col-sm-6 col-xs-6">
													<div>
														<span>
															{{ (!in_array($parentCat->type, ['job-offer', 'job-search'])) ? t('Price') : t('Salary') }}:
														</span>
														<span>
															@if ($post->price > 0)
																{!! \App\Helpers\Number::money($post->price) !!}
															@else
																{!! \App\Helpers\Number::money(' --') !!}
															@endif
															@if ($post->negotiable == 1)
																<small class="label label-success"> {{ t('Negotiable') }}</small>
															@endif
														</span>
													</div>
												</div>
											@endif
											<div style="clear: both;"></div>
											<hr>
											
											<!-- Description -->
											<div class="detail-line-content">
												@if (config('settings.simditor_wysiwyg') || config('settings.ckeditor_wysiwyg'))
													{!! auto_link(\Mews\Purifier\Facades\Purifier::clean($post->description)) !!}
												@else
													{!! nl2br(auto_link(str_clean($post->description))) !!}
												@endif
											</div>
											
											<!-- Custom Fields -->
											@include('post.inc.fields-values')
											
											<!-- Actions -->
											<div class="detail-line-action col-md-12 col-sm-12 text-center">
												<div class="col-md-4 col-sm-4 col-xs-4">
												@if (Auth::check())
													@if ($user->id == $post->user_id)
														<a href="{{ lurl('posts/' . $post->id . '/edit') }}">
															<i class="fa fa-pencil-square-o tooltipHere" data-toggle="tooltip" data-original-title="{{ t('Edit') }}"></i>
														</a>
													@else
														@if ($post->email != '')
															<a data-toggle="modal" href="#contactUser">
																<i class="icon-mail-2 tooltipHere" data-toggle="tooltip" data-original-title="{{ t('Send a message') }}"></i>
															</a>
														@else
															<i class="icon-mail-2" style="color: #dadada"></i>
														@endif
													@endif
												@else
													@if ($post->email != '')
														<a data-toggle="modal" href="#contactUser">
															<i class="icon-mail-2 tooltipHere" data-toggle="tooltip" data-original-title="{{ t('Send a message') }}"></i>
														</a>
													@else
														<i class="icon-mail-2" style="color: #dadada"></i>
													@endif
												@endif
												</div>
												<div class="col-md-4 col-sm-4 col-xs-4">
													<a class="make-favorite" id="{{ $post->id }}">
														@if (Auth::check())
															@if (\App\Models\SavedPost::where('user_id', $user->id)->where('post_id', $post->id)->count() > 0)
																<i class="fa fa-heart tooltipHere" data-toggle="tooltip" data-original-title="{{ t('Remove favorite') }}"></i>
															@else
																<i class="fa fa-heart-o" class="tooltipHere" data-toggle="tooltip" data-original-title="{{ t('Save ad') }}"></i>
															@endif
														@else
															<i class="fa fa-heart-o" class="tooltipHere" data-toggle="tooltip" data-original-title="{{ t('Save ad') }}"></i>
														@endif
													</a>
												</div>
												<div class="col-md-4 col-sm-4 col-xs-4">
													<a href="{{ lurl('posts/' . $post->id . '/report') }}">
														<i class="fa icon-info-circled-alt tooltipHere" data-toggle="tooltip" data-original-title="{{ t('Report abuse') }}"></i>
													</a>
												</div>
											</div>
										</div>
										
										<br>&nbsp;<br>
									</div>
								</div>
								
								@if (isset($reviewsPlugin) and !empty($reviewsPlugin))
									@if (view()->exists('reviews::comments'))
										@include('reviews::comments')
									@endif
								@endif
							</div>
							<!-- /.tab content -->
									
							<div class="content-footer text-left">
								@if (Auth::check())
									@if ($user->id == $post->user_id)
										<a class="btn btn-default" href="{{ lurl('posts/' . $post->id . '/edit') }}"><i class="fa fa-pencil-square-o"></i> {{ t('Edit') }}</a>
									@else
										@if ($post->email != '')
											<a class="btn btn-default" data-toggle="modal" href="#contactUser"><i class="icon-mail-2"></i> {{ t('Send a message') }} </a>
										@endif
									@endif
								@else
									@if ($post->email != '')
										<a class="btn btn-default" data-toggle="modal" href="#contactUser"><i class="icon-mail-2"></i> {{ t('Send a message') }} </a>
									@endif
								@endif
								@if ($post->phone_hidden != 1 and !empty($post->phone))
									<a href="tel:{{ $post->phone }}" id="phone_show_bottom" class="btn btn-success showphone">
										<i class="icon-phone-1"></i>
										{!! $phone !!}{{-- t('View phone') --}}
									</a>
                                                                <a style="display: none" href="tel:{{ $post->phone }}" id="phon_hidden_bottom" class="btn btn-success btn-block showphone">
                                                                    <i class="icon-phone-1"></i>
                                                                    {!! $phone_show !!}{{-- t('View phone') --}}
                                                                </a>
								@endif
							</div>
						</div>
					</div>
					<!--/.ads-details-wrapper-->
				</div>
				<!--/.page-content-->

				<div class="col-sm-3 page-sidebar-right">
					<aside>
						<div class="panel sidebar-panel panel-contact-seller">
							<div class="panel-heading">{{ t('Contact advertiser') }}</div>
							<div class="panel-content user-info">
								<div class="panel-body text-center">
									<div class="seller-info">
										@if (isset($post->contact_name) and $post->contact_name != '')
											@if (isset($post->user) and $post->user->id != 1)
												<h3 class="no-margin">
													<a href="{{ lurl(trans('routes.v-search-user', ['countryCode' => $country->get('icode'), 'id' => $post->user->id])) }}">
														{{ $post->contact_name }}
													</a>
												</h3>
											@else
												<h3 class="no-margin">{{ $post->contact_name }}</h3>
											@endif
										@endif
										<p>
											{{ t('Location') }}:&nbsp;
											<strong>
												<a href="{!! lurl(trans('routes.v-search-city', ['countryCode' => $country->get('icode'), 'city' => slugify($post->city->name), 'id' => $post->city->id])) !!}">
													{{ $post->city->name }}
												</a>
											</strong>
										</p>
										@if ($post->user and !is_null($post->user->created_at_ta))
											<p> {{ t('Joined') }}: <strong>{{ $post->user->created_at_ta }}</strong></p>
										@endif
									</div>
									<div class="user-ads-action">
										@if (Auth::check())
											@if ($user->id == $post->user_id)
												<a href="{{ lurl('posts/' . $post->id . '/edit') }}" data-toggle="modal" class="btn btn-default btn-block">
													<i class="fa fa-pencil-square-o"></i> {{ t('Edit') }}
												</a>
											@else
												@if ($post->email != '')
													<a href="#contactUser" data-toggle="modal" class="btn btn-default btn-block">
														<i class="icon-mail-2"></i> {{ t('Send a message') }}
													</a>
												@endif
											@endif
										@else
											@if ($post->email != '')
												<a href="#contactUser" data-toggle="modal" class="btn btn-default btn-block">
													<i class="icon-mail-2"></i> {{ t('Send a message') }}
												</a>
											@endif
										@endif
										@if ($post->phone_hidden != 1 and !empty($post->phone))
											<a href="tel:{{ $post->phone }}" id="phone_show" class="btn btn-success btn-block showphone">
                                                <i class="icon-phone-1"></i>
                                                {!! $phone !!}{{-- t('View phone') --}}
                                            </a>
                                            <a style="display: none" href="tel:{{ $post->phone }}" id="phon_hidden" class="btn btn-success btn-block showphone">
                                                <i class="icon-phone-1"></i>
                                                {!! $phone_show !!}{{-- t('View phone') --}}
                                            </a>
                                            
                                            <button onclick="showPhone()" id="btn_show_phone" class="btn btn-success btn-block showphone">Show Phone</button>
                                            
										@endif
									</div>
								</div>
							</div>
						</div>
						
						@if (config('settings.show_post_on_googlemap'))
							<div class="panel sidebar-panel">
								<div class="panel-heading">{{ t('Location\'s Map') }}</div>
								<div class="panel-content">
									<div class="panel-body text-left" style="padding: 0;">
										<div class="ads-googlemaps">
											<iframe id="googleMaps" width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src=""></iframe>
										</div>
									</div>
								</div>
							</div>
						@endif
						
						@if (isVerifiedPost($post))
							@include('layouts.inc.social.horizontal')
						@endif
						
						<div class="panel sidebar-panel">
							<div class="panel-heading">{{ t('Safety Tips for Buyers') }}</div>
							<div class="panel-content">
								<div class="panel-body text-left">
									<ul class="list-check">
										<li> {{ t('Meet seller at a public place') }} </li>
										<li> {{ t('Check the item before you buy') }} </li>
										<li> {{ t('Pay only after collecting the item') }} </li>
									</ul>
                                    <?php $tipsUrl = getUrlPageByType('tips'); ?>
                                    @if ($tipsUrl != '#' && $tipsUrl != '')
									<p>
										<a class="pull-right" href="{{ $tipsUrl }}">
                                            {{ t('Know more') }}
                                            <i class="fa fa-angle-double-right"></i>
                                        </a>
                                    </p>
                                    @endif
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>

			<div style="margin-top: 30px;"></div>
			
			@include('home.inc.featured')
			@include('layouts.inc.advertising.bottom')
			@if (isVerifiedPost($post))
				@include('layouts.inc.tools.facebook-comments')
			@endif

		</div>
	</div>
@endsection

@section('modal_message')
	@include('post.inc.compose-message')
@endsection

@section('after_styles')
	<!-- bxSlider CSS file -->
	<link href="{{ url('assets/plugins/bxslider/jquery.bxslider.css') }}" rel="stylesheet"/>
@endsection

@section('after_scripts')
    @if (config('services.googlemaps.key'))
        <script src="https://maps.googleapis.com/maps/api/js?key={{ config('services.googlemaps.key') }}" type="text/javascript"></script>
    @endif

	<!-- bxSlider Javascript file -->
	<script src="{{ url('assets/plugins/bxslider/jquery.bxslider.min.js') }}"></script>
    
	<script>
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
			/* Slider */
			var $mainImgSlider = $('.bxslider').bxSlider({
				speed: 1000,
				pagerCustom: '#bx-pager',
				adaptiveHeight: true
			});
			
			/* Initiates responsive slide */
			var settings = function () {
				var mobileSettings = {
					slideWidth: 80,
					minSlides: 2,
					maxSlides: 5,
					slideMargin: 5,
					adaptiveHeight: true,
					pager: false
				};
				var pcSettings = {
					slideWidth: 100,
					minSlides: 3,
					maxSlides: 6,
					pager: false,
					slideMargin: 10,
					adaptiveHeight: true
				};
				return ($(window).width() < 768) ? mobileSettings : pcSettings;
			};
			
			var thumbSlider;
			
			function tourLandingScript() {
				thumbSlider.reloadSlider(settings());
			}
			
			thumbSlider = $('.product-view-thumb').bxSlider(settings());
			$(window).resize(tourLandingScript);
			
			
			@if (config('settings.show_post_on_googlemap'))
				/* Google Maps */
				getGoogleMaps(
				'{{ config('services.googlemaps.key') }}',
				'{{ (isset($post->city) and !empty($post->city)) ? addslashes($post->city->name) . ',' . $country->get('asciiname') : $country->get('asciiname') }}',
				'{{ config('app.locale') }}'
				);
			@endif
            
			/* Keep the current tab active with Twitter Bootstrap after a page reload */
            /* For bootstrap 3 use 'shown.bs.tab', for bootstrap 2 use 'shown' in the next line */
            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                /* save the latest tab; use cookies if you like 'em better: */
                localStorage.setItem('lastTab', $(this).attr('href'));
            });
            /* Go to the latest tab, if it exists: */
            var lastTab = localStorage.getItem('lastTab');
            if (lastTab) {
                $('[href="' + lastTab + '"]').tab('show');
            }
		})
	</script>
        <script>
        function showPhone() {
            document.getElementById("phon_hidden").style.display = "block";
            document.getElementById("phon_hidden_bottom").style.display = "inline";
            document.getElementById("phone_show").style.display = "none";
            document.getElementById("phone_show_bottom").style.display = "none";
            document.getElementById("btn_show_phone").style.display = "none";
            }
        </script>
@endsection