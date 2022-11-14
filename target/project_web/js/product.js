$(function(){
	$('.menu-multi').siblings().css('display','none');

	$('.menu-multi').click(function(){
		$(this).siblings().slideToggle('show');
	});
	$('.dropdown-item').click(function(){
		$('.option-customs').html($(this).html());

	});
	$('.fa-bars').click(function(){
		$('.menu-multi-mobile').show();
		$('.overplay').show();
	});
	$('.fa-times').click(function(){
		$('.menu-multi-mobile').hide();
		$('.overplay').hide();

	});

	$('.products-iphone .owl-carousel').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		dots:true,
		navText: ["<span aria-label='Prev'></span>","<span aria-label='Next'></span>"],
		responsive:{
			0:{
				items:1
			},
			600:{
				items:1
			},
			1000:{
				items:1
			}
		}
	});
	$('.introduce-products .owl-carousel').owlCarousel({
		loop:false,
		margin:10,
		nav:true,
		dots:false,
		navText: ["<span aria-label='Prev'></span>","<span aria-label='Next'></span>"],
		responsive:{
			0:{
				items:1
			},
			600:{
				items:5
			},
			1000:{
				items:5
			}
		}
	});
	$('.details-product .owl-carousel').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		navText: ["<span aria-label='Prev'></span>","<span aria-label='Next'></span>"],
		responsive:{
			0:{
				items:1
			},
			600:{
				items:1
			},
			1000:{
				items:1
			}
		}
	});
	$('.productseen .owl-carousel').owlCarousel({
		loop:false,
		margin:10,
		nav:true,
		dots:false,
		navText: ["<span aria-label='Prev'></span>","<span aria-label='Next'></span>"],
		responsive:{
			0:{
				items:1
			},
			600:{
				items:3
			},
			1000:{
				items:5
			}
		}
	})

	$('.find-place').click(function(){
		$(this).css('display','none');
		$('.search-place').css('display','block');
	});
	$('.btn-hide').click(function(){
		$('.info-show').css('display','none');
		$('.info-hide').css('display','block');
	});
	$('.btn-show').click(function(){
		$('.info-hide').css('display','none');
		$('.info-show').css('display','block');
	});
	$('#navbar-example2 ul li').click(function(){
		$(this).css('border-bottom','2px solid red');
		$(this).siblings().css('border','0px');
	});
	$('#navbar-example3 a').click(function(){
		$(this).css('border-bottom','2px solid red');
		$(this).siblings().css('border-bottom','0');
	})
	$(window).scroll(function(){
		if($(this).scrollTop() > 1300) $("#navbar-example3").css('position','fixed').css('display','block');
		else $("#navbar-example3").css('display','none');
	});
});
