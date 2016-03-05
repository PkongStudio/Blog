$("#msg_submit_btn").click(function(){
	$.ajax({
		type: "POST",
		url: "http://localhost/Blog/index.php/Home/Index/addMsg",
		data: {
			nickname: $("#nickname_input").val(),
			content: $("#content_input").val(),
			pid: $("#pid_input").val()
		},
		dataType: "html",
		success: function(data){
			//alert(data);
			$('#message_contents_frame').html(data);
			$("#content_input").val('');
			$("#pid_input").val(0)
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
		},
		error: function(jqXHR){
			alert("发生错误：" + jqXHR.status);
		},
	});
});