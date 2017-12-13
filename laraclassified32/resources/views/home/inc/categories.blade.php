<div class="col-lg-12 content-box">
	<div class="row row-featured row-featured-category">
		<div class="col-lg-12 box-title no-border">
			<div class="inner">
				<h2>
					<span class="title-3">{{ t('Browse by') }} <span style="font-weight: bold;">{{ t('Category') }}</span></span>
					<a href="{{ lurl(trans('routes.v-sitemap', ['countryCode' => $country->get('icode')])) }}"
					   class="sell-your-item">
						{{ t('View more') }} <i class="icon-th-list"></i>
					</a>
				</h2>
			</div>
		</div>

		@if (isset($categories) and $categories->count() > 0)
			@foreach($categories as $key => $cat)
				<div class="col-lg-2 col-md-3 col-sm-3 col-xs-4 f-category">
					<a href="{{ lurl(trans('routes.v-search-cat', ['countryCode' => $country->get('icode'), 'catSlug' => $cat->slug])) }}">
						<img src="{{ \Storage::url($cat->picture) }}" class="img-responsive" alt="img">
						<h6> {{ $cat->name }} </h6>
					</a>
				</div>
			@endforeach
		@endif

	</div>
</div>

<div style="clear: both"></div>
