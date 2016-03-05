$(function(){
	$("#login_innerbox").hover(
		function(){
			$("#logo_over").animate({opacity:0.8},700);
			$("#mask").animate({opacity:0.3},700);
			$("#login").animate({opacity:0.8},700);

		},
		function(){
			$("#logo_over").animate({opacity:0},700);
			$("#mask").animate({opacity:0},700);
			$("#login").animate({opacity:0},700);
		});
})