<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="baseUrl" value="http://127.0.0.1/36kr/" />
<c:set var="aUrl" value="http://127.0.0.1/36kr/a/" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css">
<link href="${baseUrl}img/favicon.ico" rel="shortcut icon"
	type="https://36kr.com/image/vnd.microsoft.icon">
<script type="text/javascript" src="../easyui/jquery.min.js"></script>
<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../js/manage.js"></script>

<title>后台管理</title>
</head>
<body>
<div class="easyui-panel" style="padding:5px;">
		<a href="#" class="easyui-linkbutton" data-options="plain:true">早安，${admin.username}</a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true"><img style="width:25px;margin-top: 10px;" src="${baseUrl}portrait/${admin.portrait}.png"> </a>
		<a id='updatepsd' href="#" class="easyui-linkbutton" data-options="plain:true" style="float:right;margin-top: 10px;margin-right: 30px;">修改登陆密码</a>
	</div>
	<div id='tt' class="easyui-tabs" style="width: 1500px; height: 820px">
		<div title="新闻管理" style="padding: 10px">
			<div id="tb" style="padding: 5px; height: auto">
				<div style="margin-bottom: 5px">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="add()">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="remove()">删除</a>
<!-- 		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="update()">修改</a> -->
				</div>
	<table id="dg" title="Client Side Pagination" style="width:1200px;height:600px" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10">
		<thead>
			<tr>
				<th field="id" width="5%">ID</th>
				<th field="date" width="15%">日期</th>
				<th field="author" width="20%" align="right">作者</th>
				<th field="position" width="10%" align="right">位置</th>
				<th field="title" width="50%">标题</th>
			</tr>
		</thead>
	</table>
	<table id="dg" title="Client Side Pagination" style="width:1200px;height:600px" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10">
		<thead>
			<tr>
				<th field="id" width="5%">ID</th>
				<th field="date" width="15%">日期</th>
				<th field="author" width="20%" align="right">作者</th>
				<th field="position" width="10%" align="right">位置</th>
				<th field="title" width="50%">标题</th>
			</tr>
		</thead>
	</table>
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<c:if test="${admin.level==0}">
		<div title="用户管理" style="padding: 10px">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="add2()">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="remove2()">删除</a>
			<table id="dgg" title="Client Side Pagination" style="width:1200px;height:600px" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10">
		<thead>
			<tr>
				<th field="id" width="5%">ID</th>
				<th field="username" width="15%">用户名</th>
				<th field="password" width="20%" align="right">密码</th>
				<th field="portrait" width="10%" align="right">头像</th>
			</tr>
		</thead>
	</table>
		</div>
		</c:if>
		
		
		
		
	<div title="Edit" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;display:none;">
	<form action="" id='addart'>
		<div style="margin-bottom:20px">
			<div>封面:</div>
			<input name='profile' class="easyui-textbox"   style="width:80%;height:32px">
	<select class="easyui-combobox" name="position" style="width:16%;">
		<option value="5">首推</option>
		<option value="6">推荐</option>
		<option value="7">最新</option>
		<option value="8">短讯</option>
	</select>
		</div>
		<div style="margin-bottom:20px">
			<div>标题:</div>
			<input name='title' class="easyui-textbox"   style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>摘要:</div>
			<input name='summary' class="easyui-textbox"   style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>内容:</div>
			<input name='content' class="easyui-textbox"   style="width:100%;height:280px">
		</div>
				<center><a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick='upload()' style="width:120px">Add</a></center>
	</form>
    </div>
		
		
	<div title="md" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;display:none;">
	        <link rel="stylesheet" href="../md/css/style.css" />
        <link rel="stylesheet" href="../md/css/editormd.css" />
        <div id="layout">
            <header>
                <h1>Simple example</h1>
            </header>
            <div id="test-editormd">
                <textarea style="display:none;">[TOC]

#### Disabled options

- TeX (Based on KaTeX);
- Emoji;
- Task lists;
- HTML tags decode;
- Flowchart and Sequence Diagram;

#### Editor.md directory

    editor.md/
            lib/
            css/
            scss/
            tests/
            fonts/
            images/
            plugins/
            examples/
            languages/     
            editormd.js
            ...

</textarea>
            </div>
        </div>
        <script src="../md/editormd.min.js"></script>
        <script type="text/javascript">
			var testEditor;

            $(function() {
                testEditor = editormd("test-editormd", {
                    width   : "90%",
                    height  : 640,
                    syncScrolling : "single",
                    path    : "../lib/"
                });
                
                /*
                // or
                testEditor = editormd({
                    id      : "test-editormd",
                    width   : "90%",
                    height  : 640,
                    path    : "../lib/"
                });
                */
            });
        </script>        
        
	
	
	
    </div>
		
		
		
		
	</div>
	
	<div id="dlg" class="easyui-dialog" title="新建用户" style="width:400px;height:300px;padding:10px"
			data-options="
				buttons: [{
					text:'保存',
					iconCls:'icon-ok',
					handler:addAdmin
				},{
					text:'取消',
					handler:function(){
						$('#dlg').dialog('close');
					}
				}],
				closed: true,
			">
		<form action="" id='adminadd'>
		<div style="margin-bottom:20px">
			<div>用户名:</div>
			<input name='username' class="easyui-textbox"   style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>密码:</div>
			<input id="p1"  name='password' class="easyui-textbox"   style="width:100%;height:32px">
		</div>
		</form>
		
	</div>
		<div id="dlg2" class="easyui-dialog" title="新建用户" style="width:400px;height:280px;padding:10px"
			data-options="
				buttons: [{
					text:'保存',
					iconCls:'icon-ok',
					handler:updatepsd
				},{
					text:'取消',
					handler:function(){
						$('#dlg2').dialog('close');
					}
				}],
				closed: true,
			">
		
		<form action="" id='adminupd' style='margin-top:30px;'>
		<input id='id' name='id' type="hidden" value="${admin.id}">
		<div style="margin-bottom:20px">
			<div>输入新密码:</div>
			<input id="p2" name='password' class="easyui-textbox"   style="margin-top:10px;width:100%;height:32px">
		</div>
		</form>
	</div>
</body>
</html>