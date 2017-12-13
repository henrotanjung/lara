<?php
    $fullUrl = url(\Illuminate\Support\Facades\Request::getRequestUri());
    $tmpExplode = explode('?', $fullUrl);
    $fullUrlNoParams = current($tmpExplode);
?>
<div class="col-sm-3 page-sidebar mobile-filter-sidebar" style="padding-bottom: 20px;">
	<aside>
		<div class="inner-box enable-long-words">
			
			@include('search.inc.fields')
            
            <!-- Date -->
            <div class="list-filter">
                <h5 class="list-title"><strong><a href="#"> {{ t('Date Posted') }} </a></strong></h5>
                <div class="filter-date filter-content">
                    <ul>
                        @if (isset($dates) and !empty($dates))
                            @foreach($dates as $key => $value)
                                <li>
                                    <input type="radio" name="postedDate" value="{{ $key }}" id="postedDate_{{ $key }}" {{ (Request::get('postedDate')==$key) ? 'checked="checked"' : '' }}>
                                    <label for="postedDate_{{ $key }}">{{ $value }}</label>
                                </li>
                            @endforeach
                        @endif
                        <input type="hidden" id="postedQueryString" value="{{ httpBuildQuery(Request::except(['postedDate'])) }}">
                    </ul>
                </div>
            </div>
            
            @if (isset($cat))
                @if (!in_array($cat->type, ['not-salable']))
                <!-- Price -->
                <div class="locations-list list-filter">
                    <h5 class="list-title"><strong><a href="#">{{ (!in_array($cat->type, ['job-offer', 'job-search'])) ? t('Price range') : t('Salary range') }}</a></strong></h5>
                    <form role="form" class="form-inline" action="{{ $fullUrlNoParams }}" method="GET">
						{!! csrf_field() !!}
                        @foreach(Request::except(['minPrice', 'maxPrice', '_token']) as $key => $value)
                            @if (is_array($value))
                                @foreach($value as $k => $v)
									@if (is_array($v))
										@foreach($v as $ik => $iv)
											@continue(is_array($iv))
											<input type="hidden" name="{{ $key.'['.$k.']['.$ik.']' }}" value="{{ $iv }}">
										@endforeach
									@else
                                    	<input type="hidden" name="{{ $key.'['.$k.']' }}" value="{{ $v }}">
									@endif
                                @endforeach
                            @else
                                <input type="hidden" name="{{ $key }}" value="{{ $value }}">
                            @endif
                        @endforeach
                        <div class="form-group col-sm-4 no-padding">
                            <input type="text" placeholder="2000" id="minPrice" name="minPrice" class="form-control" value="{{ Request::get('minPrice') }}">
                        </div>
                        <div class="form-group col-sm-1 no-padding text-center"> -</div>
                        <div class="form-group col-sm-4 no-padding">
                            <input type="text" placeholder="3000" id="maxPrice" name="maxPrice" class="form-control" value="{{ Request::get('maxPrice') }}">
                        </div>
                        <div class="form-group col-sm-3 no-padding">
                            <button class="btn btn-default pull-right" type="submit">{{ t('GO') }}</button>
                        </div>
                    </form>
                    <div style="clear:both"></div>
                </div>
                @endif
            
				<?php $parentId = ($cat->parent_id == 0) ? $cat->tid : $cat->parent_id; ?>
                <!-- SubCategory -->
				<div id="subCatsList" class="categories-list list-filter">
					<h5 class="list-title">
                        <strong><a href="#"><i class="fa fa-angle-left"></i> {{ t('Others Categories') }}</a></strong>
                    </h5>
					<ul class="list-unstyled">
						<li>
                            @if ($cats->has($parentId))
							<a href="{{ lurl(trans('routes.v-search-cat', [
							    'countryCode' => $country->get('icode'),
							    'catSlug'     => $cats->get($parentId)->slug
							    ])) }}" title="{{ $cats->get($parentId)->name }}">
                    			<span class="title"><strong>{{ $cats->get($parentId)->name }}</strong>
                    			</span><span class="count">&nbsp;{{ $countCatPosts->get($parentId)->total or 0 }}</span>
							</a>
                            @endif
							<ul class="list-unstyled long-list">
                                @if ($cats->groupBy('parent_id')->has($parentId))
								@foreach ($cats->groupBy('parent_id')->get($parentId) as $subCat)
                                    @continue(!$cats->has($subCat->parent_id))
									<li>
										@if (isset($uriPathSubCatSlug) and $uriPathSubCatSlug == $subCat->slug)
											<strong>
												<a href="{{ lurl(trans('routes.v-search-subCat', [
												    'countryCode' => $country->get('icode'),
												    'catSlug'     => $cats->get($subCat->parent_id)->slug,
												    'subCatSlug'  => $subCat->slug
												])) }}" title="{{ $subCat->name }}">
													{{ str_limit($subCat->name, 100) }}
													<span class="count">({{ $countSubCatPosts->get($subCat->tid)->total or 0 }})</span>
												</a>
											</strong>
										@else
											<a href="{{ lurl(trans('routes.v-search-subCat', [
												    'countryCode' => $country->get('icode'),
												    'catSlug'     => $cats->get($subCat->parent_id)->slug,
												    'subCatSlug'  => $subCat->slug
												])) }}" title="{{ $subCat->name }}">
												{{ str_limit($subCat->name, 100) }}
                                                <span class="count">({{ $countSubCatPosts->get($subCat->tid)->total or 0 }})</span>
											</a>
										@endif
									</li>
								@endforeach
                                @endif
							</ul>
						</li>
					</ul>
				</div>
				<?php $style = 'style="display: none;"'; ?>
			@endif
        
            <!-- Category -->
			<div id="catsList" class="categories-list list-filter" <?php echo (isset($style)) ? $style : ''; ?>>
				<h5 class="list-title">
                    <strong><a href="#">{{ t('All Categories') }}</a></strong>
                </h5>
				<ul class="list-unstyled">
                    @if ($cats->groupBy('parent_id')->has(0))
					@foreach ($cats->groupBy('parent_id')->get(0) as $cat)
						<li>
							@if (isset($uriPathCatSlug) and $uriPathCatSlug == $cat->slug)
								<strong>
									<a href="{{ lurl(trans('routes.v-search-cat', ['countryCode' => $country->get('icode'), 'catSlug' => $cat->slug])) }}" title="{{ $cat->name }}">
										<span class="title">{{ $cat->name }}</span>
										<span class="count">&nbsp;{{ $countCatPosts->get($cat->tid)->total or 0 }}</span>
									</a>
								</strong>
							@else
								<a href="{{ lurl(trans('routes.v-search-cat', ['countryCode' => $country->get('icode'), 'catSlug' => $cat->slug])) }}" title="{{ $cat->name }}">
									<span class="title">{{ $cat->name }}</span>
									<span class="count">&nbsp;{{ $countCatPosts->get($cat->tid)->total or 0 }}</span>
								</a>
							@endif
						</li>
					@endforeach
                    @endif
				</ul>
			</div>
            
            <!-- City -->
			<div class="locations-list list-filter">
				<h5 class="list-title"><strong><a href="#">{{ t('Locations') }}</a></strong></h5>
				<ul class="browse-list list-unstyled long-list">
                    @if (isset($cities) and $cities->count() > 0)
					@foreach ($cities as $city)
                    <li>
                        @if (isset($uriPathCityId) and $uriPathCityId == $city->id)
                            <strong>
                                <a href="{{ lurl(trans('routes.v-search-city', [
                                    'countryCode' => $country->get('icode'),
                                    'city'        => slugify($city->name),
                                    'id'          => $city->id
                                    ])) }}" title="{{ $city->name }}">
                                    {{ $city->name }}
                                </a>
                            </strong>
						@else
                            <a href="{{ lurl(trans('routes.v-search-city', [
                                'countryCode' => $country->get('icode'),
                                'city'        => slugify($city->name),
                                'id'          => $city->id
                                ])) }}" title="{{ $city->name }}">
                                {{ $city->name }}
                            </a>
						@endif
                    </li>
					@endforeach
                    @endif
				</ul>
			</div>

			<div style="clear:both"></div>
		</div>
	</aside>

</div>

@section('after_scripts')
    @parent
    <script>
        var baseUrl = '{{ $fullUrlNoParams }}';
        
        $(document).ready(function ()
        {
            $('input[type=radio][name=postedDate]').click(function() {
                var postedQueryString = $('#postedQueryString').val();
				
                if (postedQueryString != '') {
                    postedQueryString = postedQueryString + '&';
                }
                postedQueryString = postedQueryString + 'postedDate=' + $(this).val();
                
                var searchUrl = baseUrl + '?' + postedQueryString;
				redirect(searchUrl);
            });
        });
    </script>
@endsection