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

@section('search')
	@parent
	@include('home.inc.search')
@endsection

@section('content')
	<div class="main-container" id="homepage">
		<div class="container">
			
			<div class="row">
			@if (Session::has('flash_notification'))
				<div class="container" style="margin-bottom: -10px; margin-top: -10px;">
					<div class="row">
						<div class="col-lg-12">
							@include('flash::message')
						</div>
					</div>
				</div>
			@endif
			</div>
			
			@if (isset($sections) and $sections->count() > 0)
				@foreach($sections as $section)
					@if (view()->exists($section->view))
						@include($section->view)
					@endif
				@endforeach
			@endif

		</div>
	</div>
@endsection

@section('after_scripts')
@endsection
