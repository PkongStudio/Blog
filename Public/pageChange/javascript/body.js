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

// 点击这里提交 的颜色变化
$(function(){
	$(".input_photo").hover(
		function(){
			$(".input_pnoto_change").animate({opacity:1},500);
		},
		function(){
			$(".input_pnoto_change").animate({opacity:0},500);
		});
})

// 添加icon的变色
$(function(){
	$("i").hover(
		function(){
			$(this).addClass("icon_red");
		},
		function(){
			$(this).removeClass("icon_red");
		});
})
