// $(function(){
// 	$(".hide").hover(
// 		function(){
// 			$(".hide").animate({opacity:0.7},500);
// 		},
// 		function(){
// 			$(".hide").animate({opacity:0.5},500);
// 		});
// })

$(function(){
	$("#back").hover(
		function(){
			$("#backIcon").addClass("back_red");
			$("#backFont").addClass("back_red");
			$("#back").addClass("back_border");
			var back = document.getElementById("backIcon");
			back.style.backgroundColor = "#ffeece";
		},
		function(){
			$("#backIcon").removeClass("back_red");
			$("#backFont").removeClass("back_red");
			$("#back").removeClass("back_border");
			var back = document.getElementById("backIcon");
			back.style.backgroundColor = "transparent";
		});
})
