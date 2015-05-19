<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "storageinfo!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/util.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/interface/storageinfoService.js'></script>
<title>仓库信息</title>
<script language="javascript"> 
<!-- 
	function query(){	
		document.queryForm.submit();
	}
	function queryById(id){
		window.location.href = "workerinfo!queryById.action?id="+id;
	}

	function add(){
		window.location.href = "workerinfo!addQuery.action";
	}

	
	function remov(){
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		document.listForm.action ="workerinfo!remove.action";
		document.listForm.submit();
		saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');
	}	
	$(document).ready(function(){
		//提示信息
		showTip();
	});
//-->
</script>
</head>
<body>
<div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 基本信息管理 > 库工信息</div>
</div>
<div class="title_div">
    <div class="title_text">库工信息</div>
	<div class="title_other">
	<table height="36" border="0" cellspacing="0" cellpadding="0" align="right" width="100%">
	<tr>
	<form name="queryForm" action="workerinfo!pagedQuery.action" method="post">
	
	<td align="left">库工姓名：<input  class="txt" type="text" maxlength = "40" type="text" name="condition.cname" value="<s:property value="condition.cname"/>"/></td>
	<td align="left">库工编号：<input  class="txt" type="text" maxlength = "40" type="text" name="condition.cnum" value="<s:property value="condition.cnum"/>"/></td>
	<td align="left"><div onclick="javascript:query();" class="imgbtn"><span class="imgbtn_search"></span>查询</div></td>
	</form>
	
    <td><div onclick="javascript:add();" class="imgbtn"><span class="imgbtn_add"></span>添加</div></td>
    <td><div onclick="javascript:remov();" class="imgbtn"><span class="imgbtn_delete"></span>删除</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form name="listForm" action="" method="post">
    <tr class="table_th">
	<td width="5%" align="center">序号</td>
	<td width="10%" align="center">操作</td>
	<td width="5%" align="center"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>	
	<td width="10%" align="center">编号</td>
	<td width="10%" align="center">库工姓名</td>
	<td width="30%" align="center">负责库房</td>
	<td width="30%" align="center">备注</td>
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
   		<td align="center"><s:property value="num"/></td>
   		<td align="center"><s:property value="name"/></td>
   		<td  align="left" align="left">
   		<s:iterator value="sw" status="status">
   			<s:property value="store.name"/>&nbsp;
   		</s:iterator>
   		</td>
  		<td align="left"><s:property value="remark"/></td>
  		</tr> 
	</s:iterator>
</form>

<tr><td align="right" colspan="7"><%@ include file="/inc/pagetable.inc"%></td></tr>
</table>
</div>
</body>
</html>
