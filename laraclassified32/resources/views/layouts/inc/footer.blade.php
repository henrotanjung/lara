<div class="footer" id="footer">
	<div class="container">
		<ul class="pull-left navbar-link footer-nav list-inline" style="margin-left: -20px;">
			<li>
                @if ($pages->count() > 0)
                    @foreach($pages as $page)
				        <a href="{{ lurl(trans('routes.v-page', ['slug' => $page->slug])) }}"> {{ $page->name }} </a>
                    @endforeach
                @endif
				<a href="{{ lurl(trans('routes.contact')) }}"> {{ t('Contact') }} </a>
				<a href="{{ lurl(trans('routes.v-sitemap', ['countryCode' => $country->get('icode')])) }}"> {{ t('Sitemap') }} </a>
				@if (\App\Models\Country::where('active', 1)->count() > 1)
					<a href="{{ lurl(trans('routes.countries')) }}"> {{ t('Countries') }} </a>
				@endif
			</li>
			<li></li>
		</ul>
		<ul class="pull-right navbar-link footer-nav list-inline" style="padding-right: 0; margin-right: -20px;">
			<li>
				&copy; {{ date('Y') }} <a href="{{ url('/') }}" style="padding: 0;">{{ config('settings.app_name') }}</a>
			</li>
			<li>
				<a href="{{ config('settings.facebook_page_url') }}" target="_blank"><i class="icon-facebook-rect"></i></a>
                <a href="{{ config('settings.twitter_url') }}" target="_blank"><i class="icon-twitter-bird"></i></a>
			</li>
			@if (config('settings.show_powered_by'))
			<li>
				<a href="http://www.bedigit.com">Powered by Eagletech</a>
			</li>
			@endif
		</ul>
	</div>
</div>
<!-- /.footer -->