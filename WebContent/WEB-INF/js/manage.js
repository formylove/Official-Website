baseUrl='http://127.0.0.1/36kr/';
var editIndex = undefined;
function updatepsd(){
	if ($('#p2').val() == "" || $('#p2').val() == null) {
        alert("用户名密码不能为空");
	}else{
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
					alert("请求失败"+data.responseText);}
			});
			alert('更改成功，请重新登陆！')
			$('#dlg2').dialog('close');
			
		}
	});
	}
}
function upload(){
	$.ajax({
		type : "POST",
		data:$('#addart').serialize(),
		url : baseUrl+'addart/',
		success : function(data){
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
			alert('添加成功');
			
		},
		error:function(data){ 
			alert("请求失败"+data.responseText)}
	});
	
	
}
function add(){
	$('#tt').tabs('select', 'Edit');
	
}

function add2(){
	$('#dlg').dialog('open');
}
function addAdmin(){
	if ($('#p1').val() == "" || $('#p1').val() == null || $('[name=username]').val() == "" || $('[name=username]').val() == null ) {
        alert("密码不能为空");
	}else{
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
							alert("请求失败"+data.responseText)}
					});
					alert('添加成功');
					$('#dlg').dialog('close');
					
				},
				error:function(data){ 
					alert("请求失败"+data.responseText)}
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
				    alert('删除成功')
				},
				error:function(data){ 
					alert("请求失败"+data.responseText)}
			});
			
		}
	}
}
function remove2(){
	var row = $('#dgg').datagrid('getSelected');
	console.info($('#dgg').datagrid('getRowIndex',row));
	if(row.id == 1){
		alert('管理员账号无法删除')
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
					alert('删除成功')
				},
				error:function(data){ 
					alert("请求失败"+data.responseText)}
			});
			
		}
		}
	}
}
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
	
	
	
	
		});



