$("#art_submit_btn").click(function(){
	$.ajax({
		type: "POST",
		url: "http://localhost/Blog/index.php/Admin/Article/post",
		data: {
			title: $("#title_input").val(),
			summary: $("#summary_input").val(),
			content: editor.$txt.formatText()
		},
		dataType: "json",
		success: function(data){
			if(data.success){
				alert(data.msg);
				location.reload();
			}else{
				alert(data.msg);
			}
			
		},
		error: function(jqXHR){
			alert("发生错误：" + jqXHR.status);
		},
	});
});