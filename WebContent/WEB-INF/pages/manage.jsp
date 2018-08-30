<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file='./static_file_edit.jsp' %>
<title>后台管理</title>
</head>
<body>
<style type="text/css">
.panel.datagrid.panel-htop{
margin:auto;
}

</style>
<div class="easyui-panel" style="padding:5px;">
		<a href="#" class="easyui-linkbutton" data-options="plain:true">早安，${admin.username}</a>
		<a href="#" class="easyui-linkbutton" data-options="plain:true"><img style="width:25px;margin-top: 10px;" src="${baseUrl}portrait/${admin.portrait}.png"> </a>
		<a id='updatepsd' href="#" class="easyui-linkbutton" data-options="plain:true" style="float:right;margin-top: 10px;margin-right: 30px;">修改登陆密码</a>
	</div>
	<div id='tt' class="easyui-tabs" style="width: 1500px; height: 900px">
		<div title="新闻管理" style="padding: 10px">
				<div id="tb" style="margin:auto;padding: 5px; height: auto">
	<table id="dg" title="Client Side Pagination" style="width:1200px;height:420px" data-options="
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
				<div style="margin-top: 15px;text-align:center;">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="prepareAdding(false)">添加文章</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="prepareAdding(true)">添加短讯</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="remove()">删除</a>
 		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="prepareUpdating()">修改</a> 
				</div>
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
		
		
	<div title="编辑器" data-options="iconCls:'icon-reload'" style="height:1700px;padding:20px;display:none;">
				<div id="tb" style="margin:auto;padding: 5px; height: AUTO">
	<form action="" id='addart' enctype="multipart/form-data">
	<input name='content' type="hidden">
	<input name='id' type="hidden" value='-1'>
	<input name='profile' type="hidden">
        <div id="layout" style='margin:0 auto 10px auto; text-align:center;'>
	<div style='margin-top:10px;'>
	<input id='v1'  name='title' class="easyui-textbox" placeholder="标题" data-options="prompt:'标题',validType:'required'" style="width:71%;height:32px">
	<select id='v2' class="easyui-combobox" name="position" style="width:18%;margin-left:10%;">
		<option value="1" selected="selected">首推</option>
		<option value="2">推荐</option>
		<option value="3">最新</option>
	</select>
	</div>
	
		<div style='margin-top:10px;margin-bottom:10px;'>
				<input id='v3' name='summary' data-options="prompt:'摘要'"  class="easyui-textbox"   style="width:71%;height:32px">
				<input class="easyui-filebox" name="file" accept="image/gif, image/jpeg,image/png, image/jpg" data-options="prompt:'上传封面图片'" style="margin-left:10%;width:18%">
		</div>
	
        <div id="editormd">
                <textarea name='' class="editormd-markdown-textarea"  style="display:none;"></textarea>
                <textarea name='content' class="editormd-html-textarea"  style="display:none;"></textarea>
        </div>
				<a href="javascript:void(0)" class="easyui-linkbutton"  onclick='upload()' style="width:120px">提交</a>
		</div>
	
        </form>
    </div>
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
		<div id="dlg3" class="easyui-dialog" title="短讯管理" style="width:400px;height:360px;padding:10px"
			data-options="
				buttons: [{
					text:'保存',
					iconCls:'icon-ok',
					handler:addSArt
				},{
					text:'取消',
					handler:function(){
						$('#dlg3').dialog('close');
					}
				}],
				closed: true,
			">
		
		<form action="" id='newsletter' style='margin-top:30px;'>
		<input  name='id' type="hidden" value="-1">
		<input  name='position' type="hidden" value="4">
		<div style="margin-bottom:20px">
			<div>输入标题:</div>
			<input id="p3" name='title' class="easyui-textbox"   style="margin-top:10px;width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>输入摘要:</div>
			<input id="p4" name='summary' class="easyui-textbox"  multiline="true"   style="margin-top:10px;width:100%;height:100px">
		</div>
		</form>
	</div>
	<script type="text/javascript" src="js/manage.js"></script>
</body>
</html>