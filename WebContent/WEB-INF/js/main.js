baseUrl='http://sheyangtang.com/';
var iCount;
var timeInterval=101000;
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
	
	$('.close-win-btn').click(function(){
		$(this).parent().parent().removeClass('show');
	})

	
	

		 
		 

	
	
	
	
	$('.con h4').click(function(){
		$(this).parent().parent().toggleClass('show');
		$(this).next().slideToggle();
	})
	
	
	
	iCount=setInterval(forward,timeInterval);
	$(".icon-angle-left").click(backward);
	$(".icon-angle-right").click(forward);

}		
)
function forward(){
	clearInterval(iCount);
	len =$("[name='sliders']").length;
	cur_id=$(".slick-current").attr('id');
	if(parseInt(cur_id) == len -1){
		shift(0);
	}else{
		shift(parseInt(cur_id)+1);
	}
	iCount=setInterval(forward,timeInterval);
}
function backward(){
	clearInterval(iCount);
	len =$("[name='sliders']").length
	cur_id=$(".slick-current").attr('id')
	if(parseInt(cur_id) == 0){
		shift(len-1);
	}else{
		shift(parseInt(cur_id)-1);
	}
	iCount=setInterval(forward,timeInterval);
}
function shift(id){
	cur = $("#"+id);
	sbs = cur.siblings();
	cur.addClass('slick-current slick-active');
	cur.css('display','block');
	cur.animate({"z-index":"999","opacity":"1"},'slow');
	sbs.removeClass('slick-current slick-active');
	sbs.css('display','none');
	sbs.animate({"z-index":"998","opacity":"0"},'slow');
}
function contactus(){
	$(".J_contactUsWin").addClass("show");
}
function closeContactUS(){
	$(".J_contactUsWin").removeClass("show");
}

