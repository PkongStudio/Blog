var btn = document.getElementById('send');
btn.addEventListener('click', cal, false);

//功能部分
function cal(){
	var nickname = document.getElementById('nickname');//获取昵称文本框
	var message = document.getElementById('message');//获取留言文本框
	console.log(nickname);
	console.log(message);
	var date = 	"nickname=" + nickname.value
				+"&content=" + message.value;
	console.log(date);

	//发送Ajax请求并处理
	var request = new XMLHttpRequest();
	request.open("POST","index.php/Home/Index/addMsg");
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send(date);
	request.onreadystatechange = function(){
		if(request.readyState == 4){
			if(request.status == 200){
				var container = document.getElementById('message_content_frame');
				container.innerHTML = request.responseText;
			}else{
				alert("出错了 错误代码：" + request.status);
			}
		}			
	}

}
