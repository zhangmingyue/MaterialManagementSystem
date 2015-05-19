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

<title>库工选择</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.funkyUI.js"></script>
<script language="javascript"> 
<!-- 



	function add(){

		document.editForm.action ="goodsbase!savaArea.action";
		document.editForm.submit();
		saveOkTip('正在添加产地，请稍候....' , 'btn' , 'delBtn');
	}
	function del(){
	
		document.listForm.action ="goodsbase!removeArea.action";
		document.listForm.submit();
		saveOkTip('正在添加产地，请稍候....' , 'btn' , 'delBtn');
	}

	$(document).ready(function(){
		//提示信息
		showTip();
	});
	function closes(){
		window.parent.$.unfunkyUI();
	}
	
//-->
</script>
</head>
<body >
<div class="gbg">
<div class="title_div_sq">
    <div class="title_text" style="color:white">产地信息维护</div>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
	<tr>
	 <td><div onclick="javascript:del();" class="imgbtn"><span class="imgbtn_delete"></span>删除</div></td>
    <td><div onclick="javascript:closes();" class="imgbtn"><span class="imgbtn_delete"></span>关闭</div></td>
    </tr>
    </table>
    </div>
</div>
<form  id="listForm" name="listForm" action="" method="post">
<input type="hidden" name="id" value='<s:property value="id"/>'/>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="97%">
    <tr class="table_th">
	<td width="5%" align="center">序号</td>
	<td width="5%" align="center"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>	
	<td width="90%" align="center">产地</td>
	</tr>
	<s:iterator value="arealist" status="status">
			<s:if test="#status.odd == true">
				<tr class="table_1">
			</s:if>
			<s:else>
				<tr class="table_2">
			</s:else>
			<td align="center"><s:property value="currentPage.start + #status.count"/></td> 
			<td  align="center"><input class="checkbox" name="aids" type="checkbox" value="<s:property value="id"/>"/></td>
	   		<td align="center"><s:property value="name"/></td>
	  </tr> 
	</s:iterator>
</form>
	<form  id="editForm" name="editForm" action="" method="post">
		<input type="hidden" name="garea.gb_id" value='<s:property value="id"/>'/>
		<tr class="table_2">
				<td align="center" colspan="2"><div id="saveBtn" class="imgbtn2" onclick="javascript:add()"><span class="imgbtn_add"></span>添加</div></td>
				<td><input size = "15" maxlength="50"  class="input" name="garea.name"/></td>
		 </tr>
	</form>
</table>
</div>
</body>
</html>
