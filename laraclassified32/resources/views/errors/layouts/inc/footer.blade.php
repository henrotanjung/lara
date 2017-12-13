<div class="footer" id="footer">
	<div class="container">
		<ul class="pull-left navbar-link footer-nav list-inline" style="margin-left: -20px;">
			<li>
                @if (\DB::connection()->getDatabaseName())
                    <?php
                        $pages = \App\Models\Page::where('translation_lang', config('app.locale'))->orderBy('lft', 'ASC')->get();
                    ?>
                    @if ($pages->count() > 0)
                        @foreach($pages as $page)
                            <a href="{{ lurl(trans('routes.v-page', ['slug' => $page->slug])) }}"> {{ $page->name }} </a>
                        @endforeach
                    @endif
                @endif
				<a href="{{ url(config('app.locale') . '/' . trans('routes.contact')) }}"> {{ t('Contact') }} </a>
				@if (isset($lang) and isset($country))
					<a href="{{ url(config('app.locale') . '/' . trans('routes.v-sitemap', ['countryCode' => $country->get('icode')])) }}"> {{ t('Sitemap') }} </a>
				@endif
				@if (\DB::connection()->getDatabaseName())
                    @if (\App\Models\Country::where('active', 1)->count() > 1)
                        <a href="{{ url(config('app.locale') . '/' . trans('routes.countries')) }}"> {{ t('Countries') }} </a>
                    @endif
				@endif
			</li>
			<li>

			</li>
		</ul>
		<ul class="pull-right navbar-link footer-nav list-inline" style="padding-right: 10px;">
			<li>
				&copy; {{ date('Y') }} <a href="{{ url('/') }}" style="padding: 0;">{{ strtolower(getDomain()) }}</a>
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