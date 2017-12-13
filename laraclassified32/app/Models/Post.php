<?php
/**
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
 */

namespace App\Models;

use App\Models\Scopes\FromActivatedCategoryScope;
use App\Models\Scopes\VerifiedScope;
use App\Models\Scopes\ReviewedScope;
use App\Models\Traits\CountryTrait;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Schema;
use Jenssegers\Date\Date;

class Post extends BaseModel
{
    use CountryTrait, Notifiable;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'posts';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';
    protected $appends = ['created_at_ta'];

    /**
     * Indicates if the model should be timestamped.
     *
     * @var boolean
     */
    public $timestamps = true;

    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'country_code',
        'user_id',
        'category_id',
        'post_type_id',
        'title',
        'description',
        'price',
        'negotiable',
        'contact_name',
        'email',
        'phone',
        'phone_hidden',
        'city_id',
        'lat',
        'lon',
        'ip_addr',
        'visits',
		'tmp_token',
        'email_token',
		'phone_token',
        'verified_email',
		'verified_phone',
        'reviewed',
        'featured',
        'archived',
        'fb_profile',
        'partner',
        'created_at',
    ];

    /**
     * The attributes that should be hidden for arrays
     *
     * @var array
     */
    // protected $hidden = [];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];


    /**
     * Post constructor.
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        // Added in release 1.1
        if (Schema::hasColumn($this->getTable(), 'address')) {
            $this->fillable[] = 'address';
        }

        parent::__construct($attributes);
    }

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */
    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new FromActivatedCategoryScope());
        static::addGlobalScope(new VerifiedScope());
        static::addGlobalScope(new ReviewedScope());
    }

    public function routeNotificationForMail()
    {
        return $this->email;
    }

    public function routeNotificationForNexmo()
    {
        return phoneFormatInt($this->phone, $this->country_code);
    }

    public function routeNotificationForTwilio()
    {
        return phoneFormatInt($this->phone, $this->country_code);
    }

    public function getTitleHtml()
    {
        $post = self::find($this->id);

        return getPostUrl($post);
    }

    public function getPictureHtml()
    {
        $style = ' style="width:auto; height:90px;"';
        // Get first picture
        if ($this->pictures->count() > 0) {
            foreach ($this->pictures as $picture) {
                $out = '<img src="' . resize($picture->filename, 'small') . '" data-toggle="tooltip" title="' . $this->title . '"' . $style . '>';
                break;
            }
        } else {
            // Default picture
            $out = '<img src="' . resize(config('larapen.core.picture.default'), 'small') . '" data-toggle="tooltip" title="' . $this->title . '"' . $style . '>';
        }

        // Add link to the Ad
        $url = url(config('app.locale') . '/' . slugify($this->title) . '/' . $this->id . '.html');
        $out = '<a href="' . $url . '" target="_blank">' . $out . '</a>';

        return $out;
    }

    public function getCountryHtml()
    {
        $iconPath = 'images/flags/16/' . strtolower($this->country_code) . '.png';
        if (file_exists(public_path($iconPath))) {
            $out = '';
            $out .= '<a href="' . url('/') . '?d=' . $this->country_code . '" target="_blank">';
            $out .= '<img src="' . url($iconPath) . '" data-toggle="tooltip" title="' . $this->country_code . '">';
            $out .= '</a>';

            return $out;
        } else {
            return $this->country_code;
        }
    }

    public function getCityHtml()
    {
        if (isset($this->city) and !empty($this->city)) {
            // Pre URL (locale)
            $preUri = '';
            if (!(config('laravellocalization.hideDefaultLocaleInURL') == true && config('app.locale') == config('applang.abbr'))) {
                $preUri = config('app.locale') . '/';
            }
            // Get URL
            if (config('larapen.core.multi_countries_website')) {
                $url = url($preUri . trans('routes.v-search-city', [
                        'countryCode' => strtolower($this->city->country_code),
                        'city'        => slugify($this->city->name),
                        'id'          => $this->city->id,
                    ]));
            } else {
                $url = url($preUri . trans('routes.v-search-city', [
                        'city'        => slugify($this->city->name),
                        'id'          => $this->city->id,
                    ]));
            }

            return '<a href="' . $url . '" target="_blank">' . $this->city->name . '</a>';
        } else {
            return $this->city_id;
        }
    }

    public function getReviewedHtml()
    {
        return ajaxCheckboxDisplay($this->{$this->primaryKey}, $this->getTable(), 'reviewed', $this->reviewed);
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */
    public function postType()
    {
        return $this->belongsTo(PostType::class, 'post_type_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function city()
    {
        return $this->belongsTo(City::class, 'city_id');
    }

    public function messages()
    {
        return $this->hasMany(Message::class, 'post_id');
    }

    public function onePayment()
    {
        return $this->hasOne(Payment::class, 'post_id');
    }

    public function pictures()
    {
        return $this->hasMany(Picture::class, 'post_id');
    }

    public function savedByUsers()
    {
        return $this->hasMany(SavedPost::class, 'post_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */
    public function scopeVerified($builder)
    {
		$builder->where(function($query) {
			$query->where('verified_email', 1)->where('verified_phone', 1);
		});
	
		if (config('settings.posts_review_activation')) {
			$builder->where('reviewed', 1);
		}
	
		return $builder;
    }
	
	public function scopeUnverified($builder)
	{
		$builder->where(function($query) {
			$query->where('verified_email', 0)->orWhere('verified_phone', 0);
		});
		
		if (config('settings.posts_review_activation')) {
			$builder->orWhere('reviewed', 0);
		}
		
		return $builder;
	}

    public function scopeArchived($builder)
    {
        return $builder->where('archived', 1);
    }
	
	public function scopeUnarchived($builder)
	{
		return $builder->where('archived', 0);
	}
	
	public function scopeReviewed($builder)
	{
		if (config('settings.posts_review_activation')) {
			return $builder->where('reviewed', 1);
		} else {
			return $builder;
		}
	}
	
	public function scopeUnreviewed($builder)
	{
		if (config('settings.posts_review_activation')) {
			return $builder->where('reviewed', 0);
		} else {
			return $builder;
		}
	}

    /*
    |--------------------------------------------------------------------------
    | ACCESORS
    |--------------------------------------------------------------------------
    */
    public function getCreatedAtAttribute($value)
    {
        $value = Date::parse($value);
        if (config('timezone.id')) {
            $value->timezone(config('timezone.id'));
        }
        //echo $value->format('l d F Y H:i:s').'<hr>'; exit();
        //echo $value->formatLocalized('%A %d %B %Y %H:%M').'<hr>'; exit(); // Multi-language

        return $value;
    }

    public function getUpdatedAtAttribute($value)
    {
        $value = Date::parse($value);
        if (config('timezone.id')) {
            $value->timezone(config('timezone.id'));
        }

        return $value;
    }

    public function getDeletedAtAttribute($value)
    {
        $value = Date::parse($value);
        if (config('timezone.id')) {
            $value->timezone(config('timezone.id'));
        }

        return $value;
    }

    public function getCreatedAtTaAttribute($value)
    {
        $value = Date::parse($this->attributes['created_at']);
        if (config('timezone.id')) {
            $value->timezone(config('timezone.id'));
        }
        $value = $value->ago();

        return $value;
    }
    
    public function getEmailAttribute($value)
    {
        if (
            isDemoAdmin() &&
            Request::segment(2) != 'password'
        ) {
            if (\Auth::check()) {
                if (\Auth::user()->id != 1) {
                    $value = hideEmail($value);
                }
            }
            
            return $value;
        } else {
            return $value;
        }
    }
    
    public function getPhoneAttribute($value)
    {
        $countryCode = config('country.code');
        if (isset($this->country_code) && !empty($this->country_code)) {
            $countryCode = $this->country_code;
        }
        
        $value = phoneFormatInt($value, $countryCode);
        
        return $value;
    }

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}
