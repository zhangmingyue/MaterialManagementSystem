<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "goodsbase!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>物资基本信息</title>
<script language="javascript"> 
<!-- 

	function queryById(id){
		window.location.href = "goodsbase!queryById.action?id="+id;
	}

	function add(){
		window.location.href = "goodsbase!addQuery.action";
	}
	function remov(){
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		document.listForm.action ="goodsbase!remove.action";
		document.listForm.submit();
		saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');

	}
	
	function query(){	
		document.queryForm.submit();
	}
	$(document).ready(function(){
		//提示信息
		showTip();
	});
//-->
</script>
</head>
<body>

<div class="position_div">
	<div class="position_div_text">当前位置： 基本信息管理 > 物资基本信息</div>
</div>
<div class="title_div">
    <div class="title_text">物资基本信息</div>
	<div class="title_other">
	<form name="queryForm" action="goodsbase!pagedQuery.action" method="post">
	<table height="36" border="0" cellspacing="0" cellpadding="0" align="right" width="100%">
		<tr>
		<td align="left">物资名称：<input  class="txt" type="text" maxlength = "40" type="text" name="condition.gname" value="<s:property value="condition.gname"/>"/></td>
	    <td align="left">物资编号：<input  class="txt" type="text" maxlength = "40" type="text" name="condition.gnum" value="<s:property value="condition.gnum"/>"/></td>
	   	 <s:if test="#session.user.role.id=='001'">
	    <td align="left">物资类别：<s:select id="type" name="condition.cid" value="condition.cid" list="codelist"   listKey="code" listValue="name"  headerKey="" headerValue="全部" cssStyle="width:85px;"/></td>
	   </s:if>
	    <td align="left"><div onclick="javascript:query();" class="imgbtn"><span class="imgbtn_search"></span>查询</div></td>
	    <td align="left"><div onclick="javascript:add();" class="imgbtn"><span class="imgbtn_add"></span>添加</div></td>
	    <td align="left"><div onclick="javascript:remov();" class="imgbtn"><span class="imgbtn_delete"></span>删除</div></td>
	    </tr>
    </table>
    </form>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form name="listForm" action="" method="post">
    <tr class="table_th">
	<td width="4%" align="center">序号</td>
	<td width="10%" align="center">操作</td>
	<td width="4%"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>	
	<td width="20%" align="center">物资编号</td>
	<td width="25%" align="center">物资名称</td>
	<td width="10%" align="center">所属类别</td>
	<td width="7%" align="center">计量单位</td>
	<td width="10%" align="center">产品规格</td>
	<td width="10%" align="center">包装规格</td>
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
		<td ><input class="checkbox" name="ids" type="checkbox" value="<s:property value="id"/>"/></td>
   		<td align="center"><s:property value="num"/></td>
   		<td align="center"><s:property value="name"/></td>
   		<td align="center"><s:property value="cl_name"/></td>
   		<td align="center"><s:property value="unit"/></td>
   		<td align="center"><s:property value="norms"/></td>
   		<td align="center"><s:property value="pknorms"/></td>
  		
  </tr> 
</s:iterator>
</form>

<tr><td align="right" colspan="7"><%@ include file="/inc/pagetable.inc"%></td></tr>
</table>
</body>
</html>
