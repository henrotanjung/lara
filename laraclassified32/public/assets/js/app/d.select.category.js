/*
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

$(document).ready(function()
{
	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		},
		async: false,
		cache: false
	});

    /* On load */
    $('#subCatBloc').hide();
	getSubCategories(siteUrl, languageCode, category, subCategory);
	applyCategoryTypeActions(categoryType, packageIsEnabled);

    /* On select */
    $('#parent').bind('click, change', function()
	{
		/* Get sub-categories */
		var category = $(this).val();
		getSubCategories(siteUrl, languageCode, category, 0);

		/* Check resume file field */
		var selectedCat = $(this).find('option:selected');
		var selectedCatType = selectedCat.data('type');
        applyCategoryTypeActions(selectedCatType, packageIsEnabled);

		/* Update 'parent_type' field */
		$('input[name=parent_type]').val(selectedCatType);
	});
});

function getSubCategories(siteUrl, languageCode, catId, selectedSubCatId)
{
	/* Check Bugs */
	if (typeof languageCode === 'undefined' || typeof catId === 'undefined') {
		return false;
	}

	/* Don't make ajax request if any category has selected. */
	if (catId == 0 || catId == '') {
		return false;
	}

	/* Make ajax call */
	$.ajax({
		method: 'POST',
		url: siteUrl + '/ajax/category/sub-categories',
		data: {
			'_token': $('input[name=_token]').val(),
			'catId': catId,
			'selectedSubCatId': selectedSubCatId,
			'languageCode': languageCode,
			'errors': errors,
			'oldInput': oldInput,
			'postId': (typeof postId !== 'undefined') ? postId : ''
		}
	}).done(function(obj)
	{
		/* init. */
        $('#category').empty().append('<option value="0">' + lang.select.subCategory + '</option>').val('0').trigger('change');

		/* error */
		if (typeof obj.error !== "undefined") {
			$('#category').find('option').remove().end().append('<option value="0"> '+ obj.error.message +' </option>');
			$('#category').closest('.form-group').addClass('has-error');
			return false;
		} else {
			/* $('#category').closest('.form-group').removeClass('has-error'); */
		}

		if (typeof obj.subCats === "undefined" || typeof obj.countSubCats === "undefined") {
			return false;
		}

		/* Bind data into Select list */
		if (obj.countSubCats == 1) {
            $('#subCatBloc').hide();
            $('#category').empty().append('<option value="' + obj.subCats[0].tid + '">' + obj.subCats[0].name + '</option>').val(obj.subCats[0].tid).trigger('change');
		} else {
            $('#subCatBloc').show();
            $.each(obj.subCats, function (key, subCat) {
                if (selectedSubCatId == subCat.tid) {
                    $('#category').append('<option value="' + subCat.tid + '" selected="selected">' + subCat.name + '</option>');
                } else
                    $('#category').append('<option value="' + subCat.tid + '">' + subCat.name + '</option>');
            });
        }
        
        /* Load Custom Fields */
		$('#customFields').html(obj.customFields);
		
		/* Apply Fields Components */
		initSelect2($('#customFields'), languageCode);
	});

    return selectedSubCatId;
}

/**
 * Apply Category Type actions (for Job offer/search & Services for example)
 *
 * @param categoryType
 * @param packageIsEnabled
 */
function applyCategoryTypeActions(categoryType, packageIsEnabled)
{
	$('#parentType').val(categoryType);
	
	if (categoryType == 'job-offer') {
		$('.picturesBloc').hide();

		$('#postTypeBloc label[for="post_type2"]').show();
		$('#priceBloc label[for="price"]').html(lang.salary);
		$('#priceBloc').show();
	} else if (categoryType == 'job-search') {
		$('#postTypeBloc label[for="post_type2"]').hide();
		$('.picturesBloc').hide();

		$('#postTypeBloc input[value="1"]').attr('checked', 'checked');
		$('#priceBloc label[for="price"]').html(lang.salary);
		$('#priceBloc').show();
	} else if (categoryType == 'service') {
		$('#postTypeBloc label[for="post_type2"]').show();
		$('#priceBloc label[for="price"]').html(lang.price);
		$('#priceBloc').show();
		$('.picturesBloc').show();
	} else if (categoryType == 'no-condition') {
		$('#postTypeBloc label[for="post_type2"]').show();
		$('#priceBloc label[for="price"]').html(lang.price);
		$('#priceBloc').show();
		$('.picturesBloc').show();
	} else if (categoryType == 'not-salable') {
		$('#priceBloc').hide();

		$('#postTypeBloc label[for="post_type2"]').show();
		$('.picturesBloc').show();
	} else {
		$('#postTypeBloc label[for="post_type2"]').show();
		$('#priceBloc label[for="price"]').html(lang.price);
		$('#priceBloc').show();
		$('.picturesBloc').show();
	}
    
    $('#nextStepBtn').html(lang.nextStepBtnLabel.next);
    if (categoryType == 'job-offer' || categoryType == 'job-search') {
        $('#nextStepBtn').html((packageIsEnabled == true) ? lang.nextStepBtnLabel.next : lang.nextStepBtnLabel.submit);
    }
}

function initSelect2(selectElementObj, languageCode)
{
	selectElementObj.find('.selecter').select2({
		language: languageCode,
		dropdownAutoWidth: 'true',
		minimumResultsForSearch: Infinity
	});
	
	selectElementObj.find('.sselecter').select2({
		language: languageCode,
		dropdownAutoWidth: 'true'
	});
}