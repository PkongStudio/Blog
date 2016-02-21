// logo的颜色变化
$(function(){
	$("#logo_frame").mouseover(function(){
		$("#logo").removeClass("logo");
	});
	$("#logo_frame").mouseout(function(){
		$("#logo").addClass("logo");
	});
})

// 二级导航颜色变化
$(function(){

})


// 隐藏区JQ暂时存放点
$(function(){
  $(".teststyle").click(function(){
      $(".hide_area_frame").css({"display":"block"});
  })
})