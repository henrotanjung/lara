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
        }
    });

    /* Search Left Sidebar : Categories & Sub-categories */
    $('#subCatsList h5 a').click(function()
    {
        $('#subCatsList').hide();
        $('#catsList').show();
        return false;
    });

    /* Save the Post */
    $('.make-favorite').click(function() {
        savePost(this);
    });

    /* Save the Search */
    $('#saveSearch').click(function() {
        saveSearch(this);
    });

});

/**
 * Save Ad
 * @param elmt
 * @returns {boolean}
 */
function savePost(elmt)
{
    var postId = $(elmt).attr('id');
    
    $.ajax({
        method: 'POST',
        url: siteUrl + '/ajax/save/post',
        data: {
            'postId': postId,
            '_token': $('input[name=_token]').val()
        }
    }).done(function(data) {
        if (typeof data.logged == "undefined") {
            return false;
        }
        if (data.logged == '0') {
            alert(lang.loginToSavePost);
            window.location.replace(data.loginUrl);
            window.location.href = data.loginUrl;
            return false;
        }
        /* Decoration */
        if (data.status == 1) {
            if ($(elmt).hasClass('btn')) {
                $('#' + data.postId).removeClass('btn-default').addClass('btn-success');
            } else {
                $(elmt).html('<i class="fa fa-heart tooltipHere" data-toggle="tooltip" data-original-title="' + lang.labelSavePostRemove + '"></i>');
            }
            alert(lang.confirmationSavePost);
        } else {
            if ($(elmt).hasClass('btn')) {
                $('#' + data.postId).removeClass('btn-success').addClass('btn-default');
            } else {
                $(elmt).html('<i class="fa fa-heart-o tooltipHere" data-toggle="tooltip" data-original-title="' + lang.labelSavePostSave + '"></i>');
            }
            alert(lang.confirmationRemoveSavePost);
        }
        return false;
    });
    
    return false;
}

/**
 * Save Search
 * @param elmt
 * @returns {boolean}
 */
function saveSearch(elmt)
{
    var url      = $(elmt).attr('name');
    var countPosts = $(elmt).attr('count');

    $.ajax({
        method: 'POST',
        url: siteUrl + '/ajax/save/search',
        data: {
            'url': url,
            'countPosts': countPosts,
            '_token': $('input[name=_token]').val()
        }
    }).done(function(data) {
        if (typeof data.logged == "undefined") {
            return false;
        }
        if (data.logged == '0') {
            alert(lang.loginToSaveSearch);
            window.location.replace(data.loginUrl);
            window.location.href = data.loginUrl;
            return false;
        }
        if (data.status == 1) {
            alert(lang.confirmationSaveSearch);
        } else {
            alert(lang.confirmationRemoveSaveSearch);
        }
        return false;
    });
    
    return false;
}