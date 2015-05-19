<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "supinfo!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/util.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/interface/storageinfoService.js'></script>
<title>供应商信息</title>
<script language="javascript"> 
<!-- 

	function queryById(id){
		window.location.href = "supinfo!queryById.action?id="+id;
	}

	function add(){
		window.location.href = "supinfo!addQuery.action";
	}

	function query(){
		document.queryForm.submit();
	}

	$(document).ready(function(){
		//提示信息
		showTip();
	});
	function shan(){
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		document.listForm.action ="supinfo!remove.action";
		document.listForm.submit();
		saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');
	}
//-->
</script>
</head>
<body>
<div class="gbg">
<div class="r">
	<div class="position_div_text">当前位置： 基本信息管理 > 供应商信息</div>
</div>
<div class="title_div">
    <div class="title_text">供应商信息</div>
	<div class="title_other">
	<form name="queryForm" action="supinfo!pagedQuery.action" method="post">
		<table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
		<tr>
		 	<td>企业名称：<input  class="txt" type="text" maxlength = "20" type="text" name="condition.sname" value="<s:property value="condition.sname"/>"/></td>
	     	<td>联系人：<input  class="txt" type="text" maxlength = "20" type="text" name="condition.linkm" value="<s:property value="condition.linkm"/>"/></td>
	    	<td><div onclick="javascript:query();" class="imgbtn"><span class="imgbtn_search"></span>查询</div></td>
	    	<td><div onclick="javascript:add();" class="imgbtn"><span class="imgbtn_add"></span>添加</div></td>
	    	<td><div onclick="javascript:shan();" class="imgbtn"><span class="imgbtn_delete"></span>删除</div></td>
	    </tr>
	    </table>
    </form>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form name="listForm" action="" method="post">
    <tr class="table_th">
	<td width="5%" align="center">序号</td>
	<td width="10%" align="center">操作</td>
	<td width="5%" align="center"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>	
	<td width="20%" align="center">企业名称</td>
	<td width="10%" align="center">联系人</td>
	<td width="20%" align="center">联系方式</td>
	<td width="30%" align="center">地址</td>
	</tr>
	<s:iterator value="currentPage.data" status="status">
		<s:if test="#status.odd == true">
			<tr class="table_1">
		</s:if>
		<s:else> 
			<tr class="table_2">
		</s:else>
		<td align="center"><s:property value="currentPage.start + #status.count"/></td> 
		<td align="center"><div onclick="javascript:queryById('<s:property value="id"/>');"><img class="img" src="<%= request.getContextPath() %>/images/bimgs/modify.gif" title="修改"></div></td>
		<td align="center"><input class="checkbox" name="ids" type="checkbox" value="<s:property value="id"/>"/></td>
   		<td align="center"><s:property value="name"/></td>
   		<td align="center"><s:property value="linkman"/></td>
   		<td align="center"><s:property value="link"/></td>
   		<td align="center"><s:property value="addr"/></td>
  		</tr> 
	</s:iterator>
</form>

<tr><td align="right" colspan="7"><%@ include file="/inc/pagetable.inc"%></td></tr>
</table>
</div>
</body>
</html>
