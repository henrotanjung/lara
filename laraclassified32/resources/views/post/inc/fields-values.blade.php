@if (isset($customFields) and $customFields->count() > 0)
<div id="customFields">
	<h4>{{ t('Additional Details') }}</h4>
	<div>
		@foreach($customFields as $field)
            <?php
            if (in_array($field->type, ['radio', 'select'])) {
                if (is_numeric($field->default)) {
                    $option = \App\Models\FieldOption::transById($field->default);
                    if (!empty($option)) {
                        $field->default = $option->value;
                    }
                }
            }
            if (in_array($field->type, ['checkbox'])) {
                $field->default = ($field->default == 1) ? t('Yes') : t('No');
            }
            ?>
			@if ($field->type == 'file')
				<div class="detail-line col-md-12 col-sm-12">
					<div class="rounded-small" style="margin-left: 0; margin-right: 0;">
						<span class="detail-line-label" style="padding-top: 8px;">{{ $field->name }}</span>
						<span class="detail-line-value">
							<a class="btn btn-default" href="{{ \Storage::url($field->default) }}" target="_blank">
								<i class="icon-attach-2"></i> {{ t('Download') }}
							</a>
						</span>
					</div>
				</div>
			@else
				@if (!is_array($field->default))
					<div class="detail-line col-md-6 col-sm-6">
						<div class="rounded-small">
							<span class="detail-line-label">{{ $field->name }}</span>
							<span class="detail-line-value">{{ $field->default }}</span>
						</div>
					</div>
				@else
					@if (count($field->default) > 0)
					<div class="detail-line col-md-12 col-sm-12">
						<div class="rounded-small">
							<span>{{ $field->name }}:</span>
							<div class="row">
								@foreach($field->default as $valueItem)
									@continue(!isset($valueItem->value))
									<div class="col-md-4 col-sm-4 no-margin no-padding">
										<div class="no-margin">
											<i class="fa fa-check"></i> {{ $valueItem->value }}
										</div>
									</div>
								@endforeach
							</div>
						</div>
					</div>
					@endif
				@endif
			@endif
		@endforeach
	</div>
</div>
@endif
