$("#login_btn").click(function(){
	$.ajax({
		type: "POST",
		url: "http://localhost/Blog/index.php/Admin/Auth/login",
		data: {
			username: $("#uname_input").val(),
			password: $("#pw_input").val()
		},
		dataType: "json",
		success: function(data){
			if(data.success){
				location.href = 'http://localhost/Blog/index.php/Admin/index'; 
			}else{
				alert(data.msg);
			}
			
		},
		error: function(jqXHR){
			alert("发生错误：" + jqXHR.status);
		},
	});
});