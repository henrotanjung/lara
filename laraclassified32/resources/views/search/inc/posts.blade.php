<?php
if (!isset($cacheExpiration)) {
    $cacheExpiration = (int)config('settings.app_cache_expiration');
}
?>
@if (isset($posts) and $posts->getCollection()->count() > 0)
	<?php
		if (!isset($cats)) {
			$cats = collect([]);
		}
  
		foreach($posts->getCollection() as $key => $post):
		if (empty($countries) or !$countries->has($post->country_code)) continue;
	
		// Get Pack Info
        $package = null;
        if ($post->featured==1) {
            $cacheId = 'package.' . $post->py_package_id . '.' . config('app.locale');
            $package = \Illuminate\Support\Facades\Cache::remember($cacheId, $cacheExpiration, function () use ($post) {
                $package = \App\Models\Package::transById($post->py_package_id);
                return $package;
            });
		}
	
		// Get PostType Info
		$cacheId = 'postType.' . $post->post_type_id . '.' . config('app.locale');
    	$postType = \Illuminate\Support\Facades\Cache::remember($cacheId, $cacheExpiration, function () use ($post) {
            $postType = \App\Models\PostType::transById($post->post_type_id);
			return $postType;
		});
		if (empty($postType)) continue;
	
		// Get Post's URL
		$postUrl = lurl(slugify($post->title) . '/' . $post->id . '.html');
  
		// Get Post's Pictures
		$pictures = \App\Models\Picture::where('post_id', $post->id);
		if ($pictures->count() > 0) {
			$postImg = resize($pictures->first()->filename, 'medium');
		} else {
			$postImg = resize(config('larapen.core.picture.default'));
		}
  
		// Get the Post's City
		$cacheId = config('country.code') . '.city.' . $post->city_id;
    	$city = \Illuminate\Support\Facades\Cache::remember($cacheId, $cacheExpiration, function () use ($post) {
            $city = \App\Models\City::find($post->city_id);
			return $city;
		});
		if (empty($city)) continue;
	?>
	<div class="item-list">
        @if (isset($package) and !empty($package))
            @if ($package->ribbon != '')
                <div class="cornerRibbons {{ $package->ribbon }}"><a href="#"> {{ $package->short_name }}</a></div>
            @endif
        @endif
		
		<div class="col-sm-2 no-padding photobox">
			<div class="add-image">
				<span class="photo-count"><i class="fa fa-camera"></i> {{ $pictures->count() }} </span>
				<a href="{{ $postUrl }}">
					<img class="thumbnail no-margin" src="{{ $postImg }}" alt="img">
				</a>
			</div>
		</div>

		<div class="col-sm-9 add-desc-box">
			<div class="add-details">
				<h5 class="add-title"><a href="{{ $postUrl }}">{{ mb_ucfirst(str_limit($post->title, 70)) }} </a></h5>
				
				<span class="info-row">
					<span class="add-type business-ads tooltipHere" data-toggle="tooltip" data-placement="right" title="{{ $postType->name }}">
						{{ strtoupper(mb_substr($postType->name, 0, 1)) }}
					</span>&nbsp;
					<?php
						// Convert the created_at date to Carbon object
						$post->created_at = \Date::parse($post->created_at)->timezone(config('timezone.id'));
						$post->created_at = $post->created_at->ago();

						// Category
						$cacheId = 'category.' . $post->category_id . '.' . config('app.locale');
                    	$liveCat = \Illuminate\Support\Facades\Cache::remember($cacheId, $cacheExpiration, function () use ($post) {
                            $liveCat = \App\Models\Category::find($post->category_id);
							return $liveCat;
						});

						// Check parent
						if (empty($liveCat->parent_id)) {
							$liveCatParentId = $liveCat->id;
							$liveCatType = $liveCat->type;
						} else {
							$liveCatParentId = $liveCat->parent_id;
							
                            $cacheId = 'category.' . $liveCat->parent_id . '.' . config('app.locale');
                            $liveParentCat = \Illuminate\Support\Facades\Cache::remember($cacheId, $cacheExpiration, function () use ($liveCat) {
                                $liveParentCat = \App\Models\Category::find($liveCat->parent_id);
                                return $liveParentCat;
                            });
							$liveCatType = (!empty($liveParentCat)) ? $liveParentCat->type : 'classified';
						}

						// Check translation
						if ($cats->has($liveCatParentId)) {
							$liveCatName = $cats->get($liveCatParentId)->name;
						} else {
							$liveCatName = $liveCat->name;
						}
					?>
					<span class="date"><i class="icon-clock"> </i> {{ $post->created_at }} </span>
					@if (isset($liveCatParentId) and isset($liveCatName))
						<span class="category">
							- <a href="{!! qsurl(config('app.locale').'/'.trans('routes.v-search', ['countryCode' => $country->get('icode')]), array_merge(Request::except('c'), ['c'=>$liveCatParentId])) !!}" class="info-link">{{ $liveCatName }}</a>
						</span>
					@endif
					- <span class="item-location"><i class="fa fa-map-marker"></i>&nbsp;
						<a href="{!! qsurl(config('app.locale').'/'.trans('routes.v-search', ['countryCode' => $country->get('icode')]), array_merge(Request::except(['l', 'location']), ['l'=>$post->city_id])) !!}" class="info-link">{{ $city->name }}</a> {{ (isset($post->distance)) ? '- ' . round(lengthPrecision($post->distance), 2) . unitOfLength() : '' }}
					  </span>
				</span>
			</div>

			@if (isset($reviewsPlugin) and !empty($reviewsPlugin))
				@if (view()->exists('reviews::ratings-list'))
					@include('reviews::ratings-list')
				@endif
			@endif
			
		</div>

		<div class="col-sm-3 text-right price-box">
			<h4 class="item-price">
				@if (isset($liveCatType) and !in_array($liveCatType, ['not-salable']))
					@if ($post->price > 0)
						{!! \App\Helpers\Number::money($post->price) !!}
					@else
						{!! \App\Helpers\Number::money('--') !!}
					@endif
				@else
					{{ '--' }}
				@endif
			</h4>
            @if (isset($package) and !empty($package))
                @if ($package->has_badge == 1)
                    <a class="btn btn-danger btn-sm make-favorite"><i class="fa fa-certificate"></i><span> {{ $package->short_name }} </span></a>&nbsp;
                @endif
            @endif
			@if (Auth::check())
				<a class="btn btn-{{ (\App\Models\SavedPost::where('user_id', $user->id)->where('post_id', $post->id)->count() > 0) ? 'success' : 'default' }} btn-sm make-favorite"
				   id="{{ $post->id }}">
					<i class="fa fa-heart"></i><span> {{ t('Save') }} </span>
				</a>
			@else
				<a class="btn btn-default btn-sm make-favorite" id="{{ $post->id }}"><i class="fa fa-heart"></i><span> {{ t('Save') }} </span></a>
			@endif
		</div>
	</div>
	<?php endforeach; ?>
@else
	<div class="item-list" style="width: 100%; border-right: 0;">
		{{ t('No result. Refine your search using other criteria.') }}
	</div>
@endif
