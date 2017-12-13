<?php
	if (!isset($languageCode) or empty($languageCode)) {
		$languageCode = config('app.locale', session('language_code'));
	}
?>
@if (isset($fields) and $fields->count() > 0)
	@foreach($fields as $field)
		<?php
		// Fields parameters
		$fieldId = 'cf.' . $field->tid;
        $fieldName = 'cf[' . $field->tid . ']';
		$fieldOld = 'cf.' . $field->tid;
        
        // Errors & Required CSS
        $requiredClass = ($field->required == 1) ? 'required' : '';
        $errorClass = (isset($errors) && $errors->has($fieldOld)) ? ' has-error' : '';
        
        // Get the default value
        $defaultValue = (isset($oldInput) && isset($oldInput[$field->tid])) ? $oldInput[$field->tid] : $field->default;
		?>
		
		@if ($field->type == 'checkbox')
			
			<!-- checkbox -->
			<div class="form-group {{ $requiredClass . $errorClass }}" style="margin-top: -10px;">
				<label class="col-md-3 control-label" for="{{ $fieldId }}"></label>
				<div class="col-md-8">
					<div class="mb10" style="padding-left: 20px;">
						<label class="checkbox" for="{{ $fieldId }}">
							<input id="{{ $fieldId }}"
								   name="{{ $fieldName }}"
								   value="1"
								   type="checkbox"
									{{ ($defaultValue=='1') ? 'checked="checked"' : '' }}>
							{{ $field->name }}
						</label>
					</div>
					<span class="help-block">{!! $field->help !!}</span>
				</div>
			</div>
		
		@elseif ($field->type == 'checkbox_multiple')
			
			@if ($field->options->count() > 0)
				<!-- checkbox_multiple -->
				<div class="form-group {{ $requiredClass . $errorClass }}" style="margin-top: -10px;">
					<label class="col-md-3 control-label" for="{{ $fieldId }}">{{ $field->name }}</label>
					<div class="col-md-8">
						<div class="mb10" style="padding-left: 20px;">
							@foreach ($field->options as $option)
                                <?php
                                // Get the default value
                                $defaultValue = (isset($oldInput) && isset($oldInput[$field->tid]) && isset($oldInput[$field->tid][$option->tid]))
                                    ? $oldInput[$field->tid][$option->tid]
                                    : (
                                    (is_array($field->default) && isset($field->default[$option->tid]) && isset($field->default[$option->tid]->tid))
                                        ? $field->default[$option->tid]->tid
                                        : $field->default
                                    );
                                ?>
								<label class="checkbox" for="{{ $fieldId . '.' . $option->tid }}">
									<input id="{{ $fieldId . '.' . $option->tid }}"
										   name="{{ $fieldName . '[' . $option->tid . ']' }}"
										   value="{{ $option->tid }}"
										   type="checkbox"
											{{ ($defaultValue==$option->tid) ? 'checked="checked"' : '' }}>
									{{ $option->value }}
								</label>
							@endforeach
						</div>
						<span class="help-block">{!! $field->help !!}</span>
					</div>
				</div>
			@endif
			
		@elseif ($field->type == 'file')
			
			<!-- file -->
			<div class="form-group {{ $requiredClass . $errorClass }}">
				<label class="col-md-3 control-label" for="{{ $fieldId }}">
					{{ $field->name }}
					@if ($field->required == 1)
						<sup>*</sup>
					@endif
				</label>
				<div class="col-md-8">
					<div class="mb10">
						<input id="{{ $fieldId }}" name="{{ $fieldName }}" type="file" class="file">
					</div>
					<p class="help-block">{!! $field->help !!} {{ t('File types: :file_types', ['file_types' => showValidFileTypes('file')], 'global', $languageCode) }}</p>
					@if (!empty($field->default) and \Storage::exists($field->default))
						<div>
							<a class="btn btn-default" href="{{ \Storage::url($field->default) }}" target="_blank">
								<i class="icon-attach-2"></i> {{ t('Download') }}
							</a>
						</div>
					@endif
				</div>
			</div>
		
		@elseif ($field->type == 'radio')
			
			@if ($field->options->count() > 0)
				<!-- radio -->
				<div class="form-group {{ $requiredClass . $errorClass }}">
					<label class="col-md-3 control-label" for="{{ $fieldId }}">
						{{ $field->name }}
						@if ($field->required == 1)
							<sup>*</sup>
						@endif
					</label>
					<div class="col-md-8">
						<div class="mb10" style="padding-left: 20px;">
							@foreach ($field->options as $option)
								<label class="radio" for="{{ $fieldName }}">
									<input id="{{ $fieldId }}"
										   name="{{ $fieldName }}"
										   value="{{ $option->tid }}"
										   type="radio"
											{{ ($defaultValue==$option->tid) ? 'checked="checked"' : '' }}>
									{{ $option->value }}
								</label>
							@endforeach
						</div>
					</div>
					<span class="help-block">{!! $field->help !!}</span>
				</div>
			@endif
		
		@elseif ($field->type == 'select')
			
			<!-- select -->
			<div class="form-group {{ $requiredClass . $errorClass }}">
				<label class="col-md-3 control-label" for="{{ $fieldId }}">
					{{ $field->name }}
					@if ($field->required == 1)
						<sup>*</sup>
					@endif
				</label>
				<div class="col-md-8">
                    <?php
                    	$select2Type = ($field->options->count() <= 10) ? 'selecter' : 'sselecter';
                    ?>
					<select id="{{ $fieldId }}" name="{{ $fieldName }}" class="form-control {{ $select2Type }}">
						<option value="{{ $field->default }}" @if(old($fieldOld)=='' or old($fieldOld)==$field->default)selected="selected"@endif>
							{{ t('Select', [], 'global', $languageCode) }}
						</option>
						@if ($field->options->count() > 0)
							@foreach ($field->options as $option)
								<option value="{{ $option->tid }}" @if($defaultValue==$option->tid)selected="selected"@endif>
									{{ $option->value }}
								</option>
							@endforeach
						@endif
					</select>
				</div>
				<span class="help-block">{!! $field->help !!}</span>
			</div>
		
		@elseif ($field->type == 'textarea')
			
			<!-- textarea -->
			<div class="form-group {{ $requiredClass . $errorClass }}">
				<label class="col-md-3 control-label" for="{{ $fieldId }}">
					{{ $field->name }}
					@if ($field->required == 1)
						<sup>*</sup>
					@endif
				</label>
				<div class="col-md-8">&nbsp;</div>
				<div class="col-md-11" style="position: relative; float: right; padding-top: 10px;">
					<textarea class="form-control"
							  id="{{ $fieldId }}"
							  name="{{ $fieldName }}"
							  placeholder="{{ $field->name }}"
							  rows="10">{{ $defaultValue }}</textarea>
					<p class="help-block">{!! $field->help !!}</p>
				</div>
			</div>
			
		@else
			
			<!-- text -->
			<div class="form-group {{ $requiredClass . $errorClass }}">
				<label class="col-md-3 control-label" for="{{ $fieldId }}">
					{{ $field->name }}
					@if ($field->required == 1)
						<sup>*</sup>
					@endif
				</label>
				<div class="col-md-8">
					<input id="{{ $fieldId }}"
						   name="{{ $fieldName }}"
						   type="text"
						   placeholder="{{ $field->name }}"
						   class="form-control input-md"
						   value="{{ $defaultValue }}">
					<span class="help-block">{!! $field->help !!}</span>
				</div>
			</div>
			
		@endif
	@endforeach
@endif