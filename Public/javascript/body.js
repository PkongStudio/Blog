// 来写篇文章吧 的颜色变化
$(function(){
	$("#writePage_frame").hover(
		function(){
			$("#writePage").animate({opacity:1},500);
		},
		function(){
			$("#writePage").animate({opacity:0},500);
		});
})

// 留言区域 的显示和隐藏
$(function(){
	$("#message_guide").hover(
		function(){
			$(this).animate({opacity:1},500);
		},
		function(){
			$(this).animate({opacity:0.2},500);
		});
})
// YES按钮的改变
$(function(){
	$(".yes").hover(
		function(){
			$(".yes_over").animate({opacity:1},200);
		},
		function(){
			$(".yes_over").animate({opacity:0},200);
		});
})
// NO按钮的改变
$(function(){
	$(".no").hover(
		function(){
			$(".no_over").animate({opacity:1},200);
		},
		function(){
			$(".no_over").animate({opacity:0},200);
		});
})
// 点击YES浮现评论框
$(function(){
	$(".yes").bind("click",function(){
		$("#message_content_frame").animate({opacity:1},300);
		$("#message_wirte_over").css({opacity:0});
	})
})
// 点击NO关闭评论框
$(function(){
	$(".no").bind("click",function(){
		$("#message_content_frame").animate({opacity:0},300);
	})
})
// 写新评论 的显示和隐藏
$(function(){
	$("#message_wirte_frame").hover(
		function(){
			$("#message_wirte_over").animate({opacity:1},500);
		},
		function(){
			$("#message_wirte_over").animate({opacity:0},500);
		});
})
// 写新评论框 的显示和隐藏
$(function(){
	$("#message_wirte_frame").bind("click",function(){
		$(".write_message").animate({opacity:0.75},300);
	})
})