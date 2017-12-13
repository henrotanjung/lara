
/* Carousel Parameters */
if (typeof carouselItems == "undefined") {
	var carouselItems = 0;
}
if (typeof carouselAutoplay == "undefined") {
	var carouselAutoplay = false;
}
if (typeof carouselAutoplayTimeout == "undefined") {
	var carouselAutoplayTimeout = 1000;
}

$(document).ready(function ()
{
	/*==================================
	 Carousel 
	 ==================================*/
	
	/* Featured Listings Carousel */
	var carouselObject = $('.featured-list-slider');
	var responsiveObject = {
		0:{
			items: 1,
			nav: true
		},
		600:{
			items: 3,
			nav: false
		},
		1000:{
			items: 5,
			nav: false,
			loop: (carouselItems > 5) ? true : false
		}
	};
	carouselObject.owlCarousel({
		nav: false,
		responsiveClass: true,
		responsive: responsiveObject,
		autoplay: carouselAutoplay,
		autoplayTimeout: carouselAutoplayTimeout,
		autoplayHoverPause: true
	});


	/*==================================
	 Ajax Tab || CATEGORY PAGE
	 ==================================*/

	$("#ajaxTabs li > a").click(function () {

		$("#allAds").empty().append("<div id='loading text-center'> <br> <img class='center-block' src='images/loading.gif' alt='Loading' /> <br> </div>");
		$("#ajaxTabs li").removeClass('active');
		$(this).parent('li').addClass('active');
		$.ajax({
			url: this.href, success: function (html) {
				$("#allAds").empty().append(html);
				$('.tooltipHere').tooltip('hide');
			}
		});
		return false;
	});

	urls = $('#ajaxTabs li:first-child a').attr("href");
	//alert(urls);
	$("#allAds").empty().append("<div id='loading text-center'> <br> <img class='center-block' src='images/loading.gif' alt='Loading' /> <br>  </div>");
	$.ajax({
		url: urls, success: function (html) {
			$("#allAds").empty().append(html);
			$('.tooltipHere').tooltip('hide');
		}
	});


	/*==================================
	 List view clickable || CATEGORY 
	 ==================================*/

	/* Default view */
	var searchDisplayMode = readCookie('searchDisplayModeCookie');
	if (searchDisplayMode) {
		if (searchDisplayMode == '.grid-view') {
			gridView('.grid-view');
		} else if (searchDisplayMode == '.list-view') {
			listView('.list-view');
		} else if (searchDisplayMode == '.compact-view') {
			compactView('.compact-view');
		}
	} else {
		createCookie('searchDisplayModeCookie', '.grid-view', 7);
	}

	// List view , Grid view  and compact view

	$('.list-view,#ajaxTabs li a').click(function (e) { /* use a class, since your ID gets mangled */
		e.preventDefault();
		listView('.list-view');
		createCookie('searchDisplayModeCookie', '.list-view', 7);
	});

	$('.grid-view').click(function (e) { /* use a class, since your ID gets mangled */
		e.preventDefault();
		gridView(this);
		createCookie('searchDisplayModeCookie', '.grid-view', 7);
	});

	$('.compact-view').click(function (e) { /* use a class, since your ID gets mangled */
		e.preventDefault();
		compactView(this);
		createCookie('searchDisplayModeCookie', '.compact-view', 7);
	});

	$(function () {
		$('.row-featured .f-category').matchHeight();
		$.fn.matchHeight._apply('.row-featured .f-category');
	});

	$(function () {
		$('.has-equal-div > div').matchHeight();
		$.fn.matchHeight._apply('.row-featured .f-category');
	});


	/*==================================
	 Global Plugins ||
	 ==================================*/

	$('.long-list').hideMaxListItems({
		'max': 8,
		'speed': 500,
        'moreText': langLayout.hideMaxListItems.moreText + ' ([COUNT])',
        'lessText': langLayout.hideMaxListItems.lessText
	});

	$('.long-list-user').hideMaxListItems({
		'max': 12,
		'speed': 500,
        'moreText': langLayout.hideMaxListItems.moreText + ' ([COUNT])',
        'lessText': langLayout.hideMaxListItems.lessText
	});

	$('.long-list-home').hideMaxListItems({
		'max': 3,
		'speed': 500,
		'moreText': langLayout.hideMaxListItems.moreText + ' ([COUNT])',
		'lessText': langLayout.hideMaxListItems.lessText
	});


	$(function () {
		$('[data-toggle="tooltip"]').tooltip()
	});

	$(".scrollbar").scroller(); // custom scroll bar plugin


	/*=======================================================================================
	 cat-collapse Hmepage Category Responsive view
	 =======================================================================================*/

	$(window).bind('resize load', function () {

		if ($(this).width() < 767) {
			$('.cat-collapse').collapse('hide');
			$('.cat-collapse').on('shown.bs.collapse', function () {
				$(this).prev('.cat-title').find('.icon-down-open-big').addClass("active-panel");
			});
			$('.cat-collapse').on('hidden.bs.collapse', function () {
				$(this).prev('.cat-title').find('.icon-down-open-big').removeClass("active-panel");
			})
		} else {
			$('.cat-collapse').removeClass('out').addClass('in').css('height', 'auto');
		}
	});

	// DEMO PREVIEW

	$(".tbtn").click(function () {
		$('.themeControll').toggleClass('active')
	});

	// jobs

	$("input:radio").click(function () {
		if ($('input:radio#job-seeker:checked').length > 0) {
			$('.forJobSeeker').removeClass('hide');
			$('.forJobFinder').addClass('hide');
		} else {
			$('.forJobFinder').removeClass('hide');
			$('.forJobSeeker').addClass('hide')

		}
	});

	$(".filter-toggle").click(function () {
		$('.mobile-filter-sidebar').prepend("<div class='closeFilter'>X</div>");
		$(".mobile-filter-sidebar").animate({"left": "0"}, 250, "linear", function () {
		});
		$('.menu-overly-mask').addClass('is-visible');
	});

	$(".menu-overly-mask").click(function () {
		$(".mobile-filter-sidebar").animate({"left": "-251px"}, 250, "linear", function () {
		});
		$('.menu-overly-mask').removeClass('is-visible');
	});


	$(document).on('click', '.closeFilter', function () {
		$(".mobile-filter-sidebar").animate({"left": "-251px"}, 250, "linear", function () {
		});
		$('.menu-overly-mask').removeClass('is-visible');
	});

});


function listView(selecter) {
	$('.grid-view,.compact-view').removeClass("active");
	$(selecter).addClass("active");
	$('.item-list').addClass("make-list"); //add the class to the clicked element
	$('.item-list').removeClass("make-grid");
	$('.item-list').removeClass("make-compact");
	$('.item-list .add-desc-box').removeClass("col-sm-9");
	$('.item-list .add-desc-box').addClass("col-sm-7");

	$(function () {
		$('.item-list').matchHeight('remove');
	});
}

function gridView(selecter) {
	$('.list-view,.compact-view').removeClass("active");
	$(selecter).addClass("active");
	$('.item-list').addClass("make-grid"); //add the class to the clicked element
	$('.item-list').removeClass("make-list");
	$('.item-list').removeClass("make-compact");
	$('.item-list .add-desc-box').removeClass("col-sm-9");
	$('.item-list .add-desc-box').addClass("col-sm-7");

	$(function () {
		$('.item-list').matchHeight();
		$.fn.matchHeight._apply('.item-list');
	});
}

function compactView(selecter) {
	$('.list-view,.grid-view').removeClass("active");
	$(selecter).addClass("active");
	$('.item-list').addClass("make-compact"); //add the class to the clicked element
	$('.item-list').removeClass("make-list");
	$('.item-list').removeClass("make-grid");
	$('.item-list .add-desc-box').toggleClass("col-sm-9 col-sm-7");

	$(function () {
		$('.adds-wrapper .item-list').matchHeight('remove');
	});
}

/**
 * Create cookie
 * @param name
 * @param value
 * @param days
 */
function createCookie(name, value, days) {
	var expires;

	if (days) {
		var date = new Date();
		date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
		expires = "; expires=" + date.toGMTString();
	} else {
		expires = "";
	}
	document.cookie = encodeURIComponent(name) + "=" + encodeURIComponent(value) + expires + "; path=/";
}

/**
 * Read cookie
 * @param name
 * @returns {*}
 */
function readCookie(name) {
	var nameEQ = encodeURIComponent(name) + "=";
	var ca = document.cookie.split(';');
	for (var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) === ' ') c = c.substring(1, c.length);
		if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length, c.length));
	}
	return null;
}

/**
 * Delete cookie
 * @param name
 */
function eraseCookie(name) {
	createCookie(name, "", -1);
}

/**
 * Set Country Phone Code
 * @param countryCode
 * @param countries
 * @returns {boolean}
 */
function setCountryPhoneCode(countryCode, countries)
{
	if (typeof countryCode == "undefined" || typeof countries == "undefined") return false;
	if (typeof countries[countryCode] == "undefined") return false;
	
	$('#phoneCountry').html(countries[countryCode]['phone']);
}

/**
 * Google Maps Generation
 * @param key
 * @param address
 * @param language
 */
function getGoogleMaps(key, address, language) {
	if (typeof address == "undefined") {
		var q = encodeURIComponent($('#address').text());
	} else {
		var q = encodeURIComponent(address);
	}
	if (typeof language == "undefined") {
		var language = 'en';
	}
	var googleMapsUrl = 'https://www.google.com/maps/embed/v1/place?key=' + key + '&q=' + q + '&language=' + language;
	
	$('#googleMaps').attr('src', googleMapsUrl);
}

/**
 * Show price & Payment Methods
 * @param packagePrice
 */
function showAmount(packagePrice)
{
	$('#payableAmount').html(packagePrice);
	if (packagePrice <= 0) {
		$('#packagesTable tbody tr:last').hide();
	} else {
		$('#packagesTable tbody tr:last').show();
	}
}

/**
 * Get the Selected Package Price
 * @param selectedPackage
 * @returns {*|jQuery}
 */
function getPackagePrice(selectedPackage)
{
	var price = $('#price-' + selectedPackage + ' .priceInt').html();
	price = parseFloat(price);
	
	return price;
}

/**
 * Redirect URL
 * @param url
 */
function redirect(url) {
	window.location.replace(url);
	window.location.href = url;
}

/**
 * Raw URL encode
 * @param str
 * @returns {string}
 */
function rawurlencode(str) {
	str = (str + '').toString();
	return encodeURIComponent(str).replace(/!/g, '%21').replace(/'/g, '%27').replace(/\(/g, '%28').replace(/\)/g, '%29').replace(/\*/g, '%2A');
}

/**
 * Check if a string is empty or null
 * @param str
 * @returns {boolean}
 */
function isEmptyValue(str) {
	return (!str || 0 === str.length);
}

/**
 * Check if a string is blank or null
 * @param str
 * @returns {boolean}
 */
function isBlankValue(str) {
	return (!str || /^\s*$/.test(str));
}
