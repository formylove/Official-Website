baseUrl='http://127.0.0.1/36kr/';
$(
function(){
	$(".J_logout").click(function(){
		   $.ajax({
		        type : "POST",
		       // dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
		        url : baseUrl+'checkout/',
		        success : function(data){
			    	if(data == 'success'){
			    		document.location.href=baseUrl;
			    	}else{
			    		$('.error-wrapper').addClass('show');
			    	}
				     },
				error:function(data){ 
				      alert("请求失败"+data.responseText)}
		    });
		
		
		
	})
	
	$("#kr-shield-submit").click(function () {
		var targetUrl = $("#LoginForm").attr("action");    
		var data = $("#LoginForm").serialize();     
	   $.ajax({
	        type : "POST",
	       // dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
	        url : targetUrl,
	        data : data,
	        success : function(data){
		    	console.info(999)
		    	if(data == 'success'){
		    		document.location.href=baseUrl;
		    	}else{
		    		$('.error-wrapper').addClass('show');
		    	}
			     },
			error:function(data){ 
			      alert("请求失败"+data.responseText)}
	    });
	});
	
	
	
	

		 
		 
	document.onkeydown = function(e) {
	    //console.log(e.ctrlKey);
	    if (81 == e.keyCode && e.ctrlKey)
	    {
	        $(".J_contactUsWin").addClass("show");
	    }
	}
	$('.close-win-btn').click(function(){
		$(this).parent().parent().removeClass('show');
	})
	
	
	
	
	$('.report-btn').click(scrape);
	$('.con h4').click(function(){
		$(this).parent().parent().toggleClass('show');
		$(this).next().slideToggle();
	})
	setInterval(forward,5000);
	$(".icon-angle-left").click(backward);
	$(".icon-angle-right").click(forward);

}		
)
function forward(){
	len =$("[name='sliders']").length
	cur_id=$(".slick-current").attr('id')
	if(parseInt(cur_id) == len -1){
		shift(0);
	}else{
		shift(parseInt(cur_id)+1);
	}
}
function backward(){
	len =$("[name='sliders']").length
	cur_id=$(".slick-current").attr('id')
	if(parseInt(cur_id) == 0){
		shift(len-1);
	}else{
		shift(parseInt(cur_id)-1);
	}
}
function shift(id){
	cur = $("#"+id);
	sbs = cur.siblings();
	cur.addClass('slick-current slick-active');
	cur.css("z-index","999");
	cur.css("opacity","1");
	cur.css(" transition","unset");
	cur.attr("aria-hidden","false");
	cur.attr("tabindex","1");
	
	sbs.removeClass('slick-current slick-active');
	sbs.css("z-index","998");
	sbs.css("opacity","0");
	sbs.css(" transition","500ms linear 0s");
	sbs.attr("aria-hidden","true");
	sbs.attr("tabindex","0");
}
function scrape(){
	$(".J_sendPostWin").addClass("show")
	request={
		url:baseUrl+'/scrape/',
		type:'PUT',
		beforeSend:function(){$(".J_sendPostWin").addClass("show")}	,
		success:function(date){
			location.reload()//要重新连服务器以读得新的页面
			//window.location.href=baseUrl;
			}
	}
	$.ajax(request);
}

