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

@section('content')
	<div class="main-container">
		<div class="container">
			<div class="row">

				@if (isset($errors) and count($errors) > 0)
					<div class="col-lg-12">
						<div class="alert alert-danger">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<h5><strong>{{ t('Oops ! An error has occurred. Please correct the red fields in the form') }}</strong></h5>
							<ul class="list list-check">
								@foreach ($errors->all() as $error)
									<li>{{ $error }}</li>
								@endforeach
							</ul>
						</div>
					</div>
				@endif

				@if (Session::has('flash_notification'))
					<div class="container" style="margin-bottom: -10px; margin-top: -10px;">
						<div class="row">
							<div class="col-lg-12">
								@include('flash::message')
							</div>
						</div>
					</div>
				@endif

				<div class="col-md-8 page-content">
					<div class="inner-box category-content">
						<h2 class="title-2"><strong> <i class="icon-user-add"></i> {{ t('Create your account, Its free') }}</strong></h2>
						<div class="row">
							@if (config('settings.activation_social_login'))
								<div class="container text-center" style="margin-bottom: 30px;">
									<div class="row row-centered">
										<div class="btn btn-lg btn-fb col-md-5 col-centered" style="margin-right: 4px;">
											<a href="{{ lurl('auth/facebook') }}" class="btn-fb"><i class="icon-facebook"></i> {!! t('Connect with Facebook') !!}</a>
										</div>
										<div class="btn btn-lg btn-danger col-md-5 col-centered" style="margin-left: 4px;">
											<a href="{{ lurl('auth/google') }}" class="btn-danger"><i class="icon-googleplus-rect"></i> {!! t('Connect with Google+') !!}</a>
										</div>
									</div>

									<div class="row row-centered loginOr">
										<div class="col-xs-12 col-sm-12">
											<hr class="hrOr">
											<span class="spanOr rounded">{{ t('or') }}</span>
										</div>
									</div>
								</div>
							@endif
							<div class="col-sm-12">
								<form id="signupForm" class="form-horizontal" method="POST" action="{{ lurl('register') }}">
									{!! csrf_field() !!}
									<fieldset>

										<!-- name -->
										<div class="form-group required <?php echo (isset($errors) and $errors->has('name')) ? 'has-error' : ''; ?>">
											<label class="col-md-3 control-label">{{ t('Name') }} <sup>*</sup></label>
											<div class="col-md-7">
												<input name="name" placeholder="{{ t('Name') }}" class="form-control input-md" type="text" value="{{ old('name') }}">
											</div>
										</div>

										<!-- country -->
										@if (!$ipCountry)
											<div class="form-group required <?php echo (isset($errors) and $errors->has('country')) ? 'has-error' : ''; ?>">
												<label class="col-md-3 control-label" for="country">{{ t('Your Country') }} <sup>*</sup></label>
												<div class="col-md-7">
													<select id="country" name="country" class="form-control sselecter">
														<option value="0" {{ (!old('country') or old('country')==0) ? 'selected="selected"' : '' }}>{{ t('Select') }}</option>
														@foreach ($countries as $code => $item)
															<option value="{{ $code }}" {{ (old('country', (!$country->isEmpty()) ? $country->get('code') : 0)==$code) ? 'selected="selected"' : '' }}>
																{{ $item->get('name') }}
															</option>
														@endforeach
													</select>
												</div>
											</div>
										@else
											<input id="country" name="country" type="hidden" value="{{ $country->get('code') }}">
										@endif

										@if (isEnabledField('phone'))
										<!-- phone -->
										<div class="form-group required <?php echo (isset($errors) and $errors->has('phone')) ? 'has-error' : ''; ?>">
											<label class="col-md-3 control-label">{{ t('Phone') }}
												@if (!isEnabledField('email'))
													<sup>*</sup>
												@endif
											</label>
											<div class="col-md-7">
												<div class="input-group">
													<span id="phoneCountry" class="input-group-addon">{!! getPhoneIcon(old('country', $country->get('code'))) !!}</span>
													<input name="phone" placeholder="{{ t('Phone Number') }}"
														   class="form-control input-md" type="text" value="{{ phoneFormat(old('phone'), old('country', $country->get('code'))) }}">
												</div>
											</div>
										</div>
										@endif
									
										@if (isEnabledField('email'))
										<!-- email -->
										<div class="form-group required <?php echo (isset($errors) and $errors->has('email')) ? 'has-error' : ''; ?>">
											<label class="col-md-3 control-label" for="email">{{ t('Email') }}
												@if (!isEnabledField('phone'))
													<sup>*</sup>
												@endif
											</label>
											<div class="col-md-7">
												<div class="input-group">
													<span class="input-group-addon"><i class="icon-mail"></i></span>
													<input id="email" name="email" type="email" class="form-control" placeholder="{{ t('Email') }}" value="{{ old('email') }}">
												</div>
											</div>
										</div>
										@endif
									
										@if (isEnabledField('username'))
										<!-- username -->
										<div class="form-group required <?php echo (isset($errors) and $errors->has('username')) ? 'has-error' : ''; ?>">
											<label class="col-md-3 control-label" for="email">{{ t('Username') }}</label>
											<div class="col-md-7">
												<div class="input-group">
													<span class="input-group-addon"><i class="icon-user"></i></span>
													<input id="username" name="username" type="text" class="form-control" placeholder="{{ t('Username') }}" value="{{ old('username') }}">
												</div>
											</div>
										</div>
										@endif
										
										<!-- password -->
										<div class="form-group required <?php echo (isset($errors) and $errors->has('password')) ? 'has-error' : ''; ?>">
											<label class="col-md-3 control-label" for="password">{{ t('Password') }} <sup>*</sup></label>
											<div class="col-md-7">
												<input id="password" name="password" type="password" class="form-control"
													   placeholder="{{ t('Password') }}">
												<br>
												<input id="password_confirmation" name="password_confirmation" type="password" class="form-control"
													   placeholder="{{ t('Password Confirmation') }}">
												<p class="help-block">{{ t('At least 5 characters') }}</p>
											</div>
										</div>

										@if (config('settings.activation_recaptcha'))
											<!-- g-recaptcha-response -->
											<div class="form-group required <?php echo (isset($errors) and $errors->has('g-recaptcha-response')) ? 'has-error' : ''; ?>">
												<label class="col-md-3 control-label" for="g-recaptcha-response"></label>
												<div class="col-md-7">
													{!! Recaptcha::render(['lang' => config('app.locale')]) !!}
												</div>
											</div>
										@endif
									
										<!-- term -->
										<div class="form-group required <?php echo (isset($errors) and $errors->has('term')) ? 'has-error' : ''; ?>"
											 style="margin-top: -10px;">
											<label class="col-md-3 control-label"></label>
											<div class="col-md-9">
												<div class="termbox mb10">
													<label class="checkbox-inline" for="term">
														<input name="term" id="term" value="1" type="checkbox" {{ (old('term')=='1') ? 'checked="checked"' : '' }}>
														{!! t('I have read and agree to the <a href=":url">Terms & Conditions</a>', ['url' => getUrlPageByType('terms')]) !!}
													</label>
												</div>
												<div style="clear:both"></div>
											</div>
										</div>

										<!-- Button  -->
										<div class="form-group">
											<label class="col-md-3 control-label"></label>
											<div class="col-md-7">
												<button id="signupBtn" class="btn btn-success btn-lg"> {{ t('Register') }} </button>
											</div>
										</div>

										<div style="margin-bottom: 30px;"></div>

									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 reg-sidebar">
					<div class="reg-sidebar-inner text-center">
						<div class="promo-text-box"><i class="icon-picture fa fa-4x icon-color-1"></i>
							<h3><strong>{{ t('Post a Free Classified') }}</strong></h3>
							<p>
								{{ t('Do you have something to sell, to rent, any service to offer or a job offer? Post it at :app_name, its free, local, easy, reliable and super fast!',
								['app_name' => getDomain()]) }}
							</p>
						</div>
						<div class="promo-text-box"><i class=" icon-pencil-circled fa fa-4x icon-color-2"></i>
							<h3><strong>{{ t('Create and Manage Items') }}</strong></h3>
							<p>{{ t('Become a best seller or buyer. Create and Manage your ads. Repost your old ads, etc.') }}</p>
						</div>
						<div class="promo-text-box"><i class="icon-heart-2 fa fa-4x icon-color-3"></i>
							<h3><strong>{{ t('Create your Favorite ads list.') }}</strong></h3>
							<p>{{ t('Create your Favorite ads list, and save your searchs. Don\'t forget any deal!') }}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection

@section('after_scripts')
	<script>
		$(document).ready(function () {
			/* Submit Form */
			$("#signupBtn").click(function () {
				$("#signupForm").submit();
				return false;
			});
		});
	</script>
@endsection