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

namespace App\Providers;

use App\Models\Category;
use App\Models\City;
use App\Models\Continent;
use App\Models\Country;
use App\Models\Currency;
use App\Models\Field;
use App\Models\FieldOption;
use App\Models\Gender;
use App\Models\HomeSection;
use App\Models\Language;
use App\Models\Message;
use App\Models\MetaTag;
use App\Models\Package;
use App\Models\Page;
use App\Models\PaymentMethod;
use App\Models\Picture;
use App\Models\Post;
use App\Models\PostType;
use App\Models\PostValue;
use App\Models\ReportType;
use App\Models\Setting;
use App\Models\SubAdmin1;
use App\Models\SubAdmin2;
use App\Models\TimeZone;
use App\Models\User;
use App\Observer\CategoryObserver;
use App\Observer\CityObserver;
use App\Observer\ContinentObserver;
use App\Observer\CountryObserver;
use App\Observer\CurrencyObserver;
use App\Observer\FieldObserver;
use App\Observer\FieldOptionObserver;
use App\Observer\GenderObserver;
use App\Observer\HomeSectionObserver;
use App\Observer\LanguageObserver;
use App\Observer\MessageObserver;
use App\Observer\MetaTagObserver;
use App\Observer\PackageObserver;
use App\Observer\PageObserver;
use App\Observer\PaymentMethodObserver;
use App\Observer\PictureObserver;
use App\Observer\PostObserver;
use App\Observer\PostTypeObserver;
use App\Observer\PostValueObserver;
use App\Observer\ReportTypeObserver;
use App\Observer\SettingObserver;
use App\Observer\SubAdmin1Observer;
use App\Observer\SubAdmin2Observer;
use App\Observer\TimeZoneObserver;
use App\Observer\UserObserver;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\ServiceProvider;

class ObserverServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Run Observers
        try {
            if (!str_contains(Route::currentRouteAction(), 'InstallController')) {
                Category::observe(CategoryObserver::class);
                City::observe(CityObserver::class);
                Continent::observe(ContinentObserver::class);
                Country::observe(CountryObserver::class);
                Currency::observe(CurrencyObserver::class);
                Field::observe(FieldObserver::class);
                FieldOption::observe(FieldOptionObserver::class);
                Gender::observe(GenderObserver::class);
                HomeSection::observe(HomeSectionObserver::class);
                Language::observe(LanguageObserver::class);
                Message::observe(MessageObserver::class);
                MetaTag::observe(MetaTagObserver::class);
                Package::observe(PackageObserver::class);
                Page::observe(PageObserver::class);
                PaymentMethod::observe(PaymentMethodObserver::class);
                Picture::observe(PictureObserver::class);
                Post::observe(PostObserver::class);
                PostType::observe(PostTypeObserver::class);
                PostValue::observe(PostValueObserver::class);
                ReportType::observe(ReportTypeObserver::class);
                Setting::observe(SettingObserver::class);
                SubAdmin1::observe(SubAdmin1Observer::class);
                SubAdmin2::observe(SubAdmin2Observer::class);
                TimeZone::observe(TimeZoneObserver::class);
                User::observe(UserObserver::class);
            }
        } catch (\Exception $e) {}
    }
    
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
