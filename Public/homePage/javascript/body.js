
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
		// $("#message_content_frame").css('display','block');
		// $("#message_content_frame").animate({opacity:1},500);
		// $("#message_wirte_over").css({opacity:0});
		$("#message_content_frame").css('opacity',1);
		$("#message_content_frame").fadeIn(500);
		
		// $("#message_content_frame").animate({opacity:1},500);

		$("#message_wirte_over").css({opacity:0});
		
	})
})
// 点击NO关闭评论框
$(function(){
	$(".no").bind("click",function(){
		$("#message_content_frame").animate({opacity:0},500);
		$(function(){
			$(".no").mouseout(function(){
				$("#message_content_frame").css('display','none');
			})
		})
		// $("#message_content_frame").animate({display:none},500);
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
		// $(".write_message").css('display','block');
		// $(".write_message").animate({opacity:0.8},500);
		// $(".input_pnoto_change").animate({opacity:0},500);
		$(".write_message").css('opacity',0.8);
		// $(".write_message").animate({opacity:0.8},500);
		$(".write_message").fadeIn(500);
		$(".input_pnoto_change").animate({opacity:0},500);
	})
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

//  写新评论框 的关闭
$(function(){
	$("#write_close").bind("click",function(){
		$(".write_message").fadeOut(500);
		//点击关闭按钮时重置文本框
		$("#content_input").val('');
			$("#pid_input").val(0)
		// $(function(){
		// 	$("#write_close").mouseout(function(){
		// 		$(".write_message").css('display','none');
		// 	})
		// })
	})
})
$(function(){
	$(".input_photo").bind("click",function(){
		$(".write_message").fadeOut(500);
		// $(function(){
		// 	$(".input_photo").mouseout(function(){
		// 		$(".write_message").css('display','none');
		// 	})
		// })
	})
})

// 留言框架 的关闭
$(function(){
	$("#message_close").bind("click",function(){
		$("#message_content_frame").fadeOut(500);
		// $("#message_content_frame").css('z-index',-1);
		// $(function(){
		// 	$("#message_close").mouseout(function(){
		// 		$("#message_content_frame").css('display','none');
		// 	})
		// })
	})
})
$(function(){
	$("#message_close").bind("click",function(){
		$("#message_content_frame").fadeOut(500);
	})
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
// 显示 写新文章
$(function(){
	$(".write_newPage_close").bind("click",function(){
		$(".write_newPage_frame").fadeOut(700);
		$("#mask").fadeOut(700);

	})
})

// 关闭 写新文章
$(function(){
	$("#writePage").bind("click",function(){
		$("#mask").fadeIn(700);
		$(".write_newPage_frame").fadeIn(700);
	})
})
$(function(){
	$("#mask").bind("click",function(){
		$("#mask").fadeIn(700);
		$(".write_newPage_frame").fadeIn(700);
	})
})
//回复按钮 的变色
$(function(){
	$("#back_icon").hover(
		function(){
			$(this).removeClass("icon_red");
		});
})
$(function(){
	$("#double_back_icon").hover(
		function(){
			$(this).removeClass("icon_red");
		});
})

$(function(){
	$(".back_message_button").hover(
		function(){
			$(this).animate({opacity:1},600);
		},
		function(){
			$(this).animate({opacity:0.5},600);
		});
})
$(function(){
	$(".double_back_message_button").hover(
		function(){
			$(this).animate({opacity:1},600);
		},
		function(){
			$(this).animate({opacity:0.5},600);
		});
})
// 回复显示新评论
$(function(){
	$(".back_message_button").bind("click",function(){
		$(".write_message").css('opacity',0.8);
		$(".write_message").fadeIn(500);
		$(".input_pnoto_change").animate({opacity:0},500);

		$('#pid_input').val(msgid = $(this).attr('msgid'));//将评论id赋值给pid隐藏框

	})
})
$(function(){
	$(".double_back_message_button").bind("click",function(){
		$(".write_message").css('opacity',0.8);
		$(".write_message").fadeIn(500);
		$(".input_pnoto_change").animate({opacity:0},500);

		$('#pid_input').val(msgid = $(this).attr('msgid'));//将评论id赋值给pid隐藏框
	})
})