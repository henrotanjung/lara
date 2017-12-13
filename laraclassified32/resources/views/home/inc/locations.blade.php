<?php
// Default Map's values
$map = ['show' => false];

// Get Admin Map's values
if (isset($citiesOptions)) {
	if (file_exists(config('larapen.core.maps.path') . strtolower($country->get('code')) . '.svg')) {
		if (isset($citiesOptions['show_map']) and $citiesOptions['show_map'] == '1') {
			$map['show'] = true;
		}
	}
}
?>
<div class="row" style="margin-bottom: 30px;">
	<div class="col-lg-12 page-content">
		<div class="inner-box">
			<?php
			if ($map['show']):
				$classCol_sm = 'col-sm-8';
				$classCol_md = 'col-md-12';
                $ulCol_xs = 'col-xs-4';
			else:
				$classCol_sm = 'col-sm-12';
				$classCol_md = 'col-md-12';
                $ulCol_xs = 'col-xs-3';
			endif
			?>
			<div class="{{ $classCol_sm }} page-content no-margin no-padding">
				@if (isset($cities))
					<div class="relative" style="text-align: center;">
						<div class="row" style="padding-top: 20px; padding-bottom: 30px; text-align: left;">
							<div class="{{ $classCol_md }}">
								<div>
									<h2 class="title-3">
										<i class="icon-location-2"></i>&nbsp;
										{{ t('Choose a city') }}
									</h2>
									<div class="row" style="padding: 0 10px 0 20px;">
										@foreach ($cities as $key => $items)
											<ul class="cat-list {{ $ulCol_xs }} {{ (count($cities) == $key+1) ? 'cat-list-border' : '' }}">
												@foreach ($items as $k => $city)
													<li>
														@if ($city->id == 999999999)
															<a href="#browseAdminCities" id="dropdownMenu1" data-toggle="modal">{{ $city->name }}</a>
														@else
															<a href="{{ lurl(trans('routes.v-search-city',
															[
																'countryCode' => $country->get('icode'),
																'city'        => slugify($city->name),
																'id'          => $city->id
															])) }}">
																{{ $city->name }}
															</a>
														@endif
													</li>
												@endforeach
											</ul>
										@endforeach
									</div>
								</div>
							</div>
						</div>

						<a class="btn btn-lg btn-yellow" href="{{ lurl('posts/create') }}" style="padding-left: 30px; padding-right: 30px; text-transform: none;">
							{{ t('Post a Free Classified Ad') }}
						</a>

					</div>
				@endif
			</div>
			
			@include('layouts.inc.tools.svgmap')

		</div>
	</div>
</div>

@section('modal_location')
	@parent
	@include('layouts.inc.modal.location')
@endsection
