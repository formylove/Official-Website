baseUrl='http://sheyangtang.com/';
var editIndex = undefined;
var title = $('#addart [name=title]');
var summary = $('#addart [name=summary]');
var content = $('#addart [name=content]');
var profile = $('#addart [name=profile]');
var file = $('#addart [name=file]');
var id = $('#addart [name=id]');
var s_title = $('#newsletter [name=title]');
var s_summary = $('#newsletter [name=summary]');
var s_id = $('#newsletter [name=id]');
var tabs = $('#tt');
var form = $('#addart');
var articles = $('#dg');
var newsletter = $('#newsletter');
function prepareAdding(isShortNews){
	if(isShortNews){
		$('#dlg3').dialog('open');
		newsletter[0].reset();
		s_id.val(-1);
	}else{
		tabs.tabs('select','编辑器');
		testEditor.setMarkdown('');
		form[0].reset();
		id.val(-1);
	}
		
}
function prepareUpdating(){
	var art = articles.datagrid('getSelected');
//	var index = $('#dg').datagrid('getRowIndex',row);
		if(art!=null){
		$.ajax({
			type : "POST",
			dataType:'json',
			contentType: false,
		    processData: false,
			url : baseUrl+'article/'+art.id,
			success : function(article){
				if(article.position == 4){
					$("#p3").textbox("setValue", article.title);
					$("#p4").textbox("setValue", article.summary);
					s_id.val(article.id);
					$('#dlg3').dialog('open');
				}else{
					tabs.tabs('select','编辑器');
					$("#v1").textbox("setValue", article.title);
					$("#v2").combobox("setValue", article.position);
					$("#v3").textbox("setValue", article.summary);
					testEditor.setMarkdown(article.content);
					profile.val(article.profile);
					id.val(article.id);
				}
				
			},
			error:function(data){ 
				$.messager.alert('Failed','未查找到文章，刷新再试！'); 
			}
		});

}else{
	$.messager.alert('警告','请选中表格中一篇文章');
}
}
function formCheck(form){
	inputs = form.find('input[name]');
	var good = true;
	inputs.each(function(){
		input =$(this);
		if((input.val() == '' || input.val() == null) && input.attr('type') != 'file'){
		$.messager.alert('警告',input.attr('name') + ' 不能为空！');
		good = false;
		return false;//continue 用return true。这里的return针对function(){}
		}
	});
	return good;
}
function addSArt(){
	var right = formCheck(newsletter); 
	if(right){
	var formData = new FormData(newsletter[0]); 
	$.ajax({
		type : "POST",
		data:formData,
		dataType:'json',
		contentType: false,
	    processData: false,
		url : baseUrl+'addsart/',
		success : function(data){
			$('#dlg3').dialog('close');
			$.messager.alert('Success','短讯发布成功！'); 
		},
		error:function(data){ 
			$.messager.alert('Failed','短讯发布失败！'); 
		}
	});
	
	
	}
}
function updatepsd(){
	if(formCheck($('#adminupd'))) {
	$.ajax({
		type : "POST",
		url : baseUrl+'updatepsd/'+$('#id').val()+'/?password='+$('#p2').val(),
		success : function(data){
			$.ajax({
				type : "POST",
				// dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
				url : baseUrl+'admins/',
				success : function(data){
					
					$.ajax({
						type : "POST",
						// dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
						url : baseUrl+'admins/',
						success : function(data){
							$('#dgg').datagrid({data:data}).datagrid('clientPaging');
						}
					});
				},
				error:function(data){ 
					$.messager.alert('Warning','更新密码失败');
				}
			});
			$.messager.alert('Success','更改成功，请重新登陆！');
			$('#dlg2').dialog('close');
			
		}
	});
	}
}
/*
 如上，通过$('#uploadForm').serialize()可以对 form 表单进行序列化，从而将 form 表单中的所有参数传递到服务端。
但是上述方式，只能传递一般的参数，上传文件的文件流是无法被序列化并传递的。
不过如今主流浏览器都开始支持一个叫做 FormData 的对象，有了这个对象就可以轻松地使用 Ajax 方式进行文件上传了。
*/
function upload(){
	content.val(testEditor.getMarkdown());
	if(formCheck(form)) {
	   var formData = new FormData($("#addart")[0]); 

	$.ajax({
		type : "POST",
		data:formData,
		dataType:'json',
		contentType: false,
	    processData: false,
		url : baseUrl+'addart/',
		success : function(data){
			$.messager.alert('Success','文章发布成功！'); 
			$('[name="id"]').val(data.id);
			window.open(baseUrl + 'a/' + data.id);
		},
//			$.ajax({
//				type : "POST",
//				 dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
//				url : baseUrl+'articles/',
//				success : function(data){
//					
//					$('#dg').datagrid({data:data}).datagrid('clientPaging');
//				},
//				error:function(data){ 
//					alert("获取文章列表失败"+data.responseText)}
//			});
//			alert('添加文章成功');
		error:function(data){ 
			$.messager.alert('Failed','文章发布失败！'); 
		}
	});
	
	
	}
}
function add2(){
	$('#dlg').dialog('open');
}
function addAdmin(){
	if(formCheck($('#adminadd'))) {
			$.ajax({
				type : "POST",
				data:$('#adminadd').serialize(),
				url : baseUrl+'addadm/',
				success : function(data){
					$.ajax({
						type : "POST",
						// dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
						url : baseUrl+'admins/',
						success : function(data){
							$('#dgg').datagrid({data:data}).datagrid('clientPaging');
						},
						error:function(data){ 
							alert("请求用户列表失败"+data.responseText)}
					});
					alert('添加用户成功');
					$('#dlg').dialog('close');
					
				},
				error:function(data){ 
					$.messager.alert('Success','添加用户失败！'); 
				}
			});
	}
}
	
function remove(){
	var row = $('#dg').datagrid('getSelected');
	console.info($('#dg').datagrid('getRowIndex',row));
	if (row){
		var del = confirm('确定删除这条记录');
		if(del){
			$.ajax({
				type : "POST",
				// dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
				url : baseUrl+'delart/'+row.id,
				success : function(data){
					var index = $('#dg').datagrid('getRowIndex',row);
				    $('#dg').datagrid('deleteRow',index);
				    $('#dg').datagrid('load');
				    $.messager.alert('Success','删除成功！'); 
				},
				error:function(data){ 
					$.messager.alert('Success','删除失败！'); 
					}
			});
			
		}
	}
}
function remove2(){
	var row = $('#dgg').datagrid('getSelected');
	console.info($('#dgg').datagrid('getRowIndex',row));
	if(row.id == 1){
		$.messager.alert('Success','管理员账号无法删除！'); 
	}else{
	if (row){
		var del = confirm('确定删除这条记录？');
		if(del){
			$.ajax({
				type : "POST",
				// dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
				url : baseUrl+'deladm/'+row.id,
				success : function(data){
					var index = $('#dgg').datagrid('getRowIndex',row);
					$('#dgg').datagrid('deleteRow',index);
					$('#dgg').datagrid('load');
					$.messager.alert('Success','删除成功！'); 
				},
				error:function(data){ 
					$.messager.alert('Success','请求失败！'); 
					}
			});
			
		}
		}
	}
}
$.extend($.fn.validatebox.defaults.rules, {
    minLength: {
		validator: function(value, param){
			return value.length >= param[0];
		},
		message: 'Please enter at least {0} characters.'
    }
});
(function($){
	function pagerFilter(data){
		if ($.isArray(data)){	// is array
			data = {
				total: data.length,
				rows: data
			}
		}
		var target = this;
		var dg = $(target);
		var state = dg.data('datagrid');
		var opts = dg.datagrid('options');
		if (!state.allRows){
			state.allRows = (data.rows);
		}
		if (!opts.remoteSort && opts.sortName){
			var names = opts.sortName.split(',');
			var orders = opts.sortOrder.split(',');
			state.allRows.sort(function(r1,r2){
				var r = 0;
				for(var i=0; i<names.length; i++){
					var sn = names[i];
					var so = orders[i];
					var col = $(target).datagrid('getColumnOption', sn);
					var sortFunc = col.sorter || function(a,b){
						return a==b ? 0 : (a>b?1:-1);
					};
					r = sortFunc(r1[sn], r2[sn]) * (so=='asc'?1:-1);
					if (r != 0){
						return r;
					}
				}
				return r;
			});
		}
		var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
		var end = start + parseInt(opts.pageSize);
		data.rows = state.allRows.slice(start, end);
		return data;
	}

	var loadDataMethod = $.fn.datagrid.methods.loadData;
	var deleteRowMethod = $.fn.datagrid.methods.deleteRow;
	$.extend($.fn.datagrid.methods, {
		clientPaging: function(jq){
			return jq.each(function(){
				var dg = $(this);
                var state = dg.data('datagrid');
                var opts = state.options;
                opts.loadFilter = pagerFilter;
                var onBeforeLoad = opts.onBeforeLoad;
                opts.onBeforeLoad = function(param){
                    state.allRows = null;
                    return onBeforeLoad.call(this, param);
                }
                var pager = dg.datagrid('getPager');
				pager.pagination({
					onSelectPage:function(pageNum, pageSize){
						opts.pageNumber = pageNum;
						opts.pageSize = pageSize;
						pager.pagination('refresh',{
							pageNumber:pageNum,
							pageSize:pageSize
						});
						dg.datagrid('loadData',state.allRows);
					}
				});
                $(this).datagrid('loadData', state.data);
                if (opts.url){
                	$(this).datagrid('reload');
                }
			});
		},
        loadData: function(jq, data){
            jq.each(function(){
                $(this).data('datagrid').allRows = null;
            });
            return loadDataMethod.call($.fn.datagrid.methods, jq, data);
        },
        deleteRow: function(jq, index){
        	return jq.each(function(){
        		var row = $(this).datagrid('getRows')[index];
        		deleteRowMethod.call($.fn.datagrid.methods, $(this), index);
        		var state = $(this).data('datagrid');
        		if (state.options.loadFilter == pagerFilter){
        			for(var i=0; i<state.allRows.length; i++){
        				if (state.allRows[i] == row){
        					state.allRows.splice(i,1);
        					break;
        				}
        			}
        			$(this).datagrid('loadData', state.allRows);
        		}
        	});
        },
        getAllRows: function(jq){
        	return jq.data('datagrid').allRows;
        }
	})
})(jQuery);



var testEditor;
document.onkeydown = function(e) {
    //console.log(e.ctrlKey);
    if (81 == e.keyCode && e.ctrlKey)
    {
    	testEditor= editormd("editormd", {
    		width : "90%",
    		height : 640,
    		syncScrolling : "single",
    		path : baseUrl + "lib/",
    		saveHTMLToTextarea : true,
    		 imageUpload : true,
             imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
             imageUploadURL :baseUrl + "imgupload/",
    	});
    }
}
$(document).one('mousedown',function(){
	testEditor= editormd("editormd", {
		width : "90%",
		height : 640,
		syncScrolling : "single",
		path : baseUrl + "lib/",
		saveHTMLToTextarea : true,
		 imageUpload : true,
         imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
         imageUploadURL :baseUrl + "imgupload/",
	});
})

$(function(){

	$('#updatepsd').click(function(){
		$('#dlg2').dialog('open');
	})
	$.ajax({
        type : "POST",
       // dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
        url : baseUrl+'articles/',
        success : function(data){
	    	$('#dg').datagrid({data:data}).datagrid('clientPaging');
		     },
		error:function(data){ 
		      alert("请求失败"+data.responseText)}
    });
	
	$.ajax({
		type : "POST",
		// dataType : "JSON",//接受返回回来的数据类型，返回值不是json执行error回调函数
		url : baseUrl+'admins/',
		success : function(data){
			$('#dgg').datagrid({data:data}).datagrid('clientPaging');
		},
		error:function(data){ 
			alert("请求失败"+data.responseText)}
	});
	testEditor = editormd("editormd", {
		width : "90%",
		height : 640,
		syncScrolling : "single",
		path : baseUrl + "lib/",
		saveHTMLToTextarea : true,
		 imageUpload : true,
         imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
         imageUploadURL :baseUrl + "imgupload/",
	});
	
	
		});



