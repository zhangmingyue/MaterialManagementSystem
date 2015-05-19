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


	function remov(){

		document.listForm.action ="storageinfo!removeChoseWorker.action";
		document.listForm.submit();
		saveOkTip('正在删除库工，请稍候....' , 'btn' , 'delBtn');
		window.parent.$.unfunkyUI();
	}
	function chose(){

		document.listForm.action ="storageinfo!choseWorker.action";
		document.listForm.submit();
		saveOkTip('正在添加库工，请稍候....' , 'btn' , 'delBtn');
		window.parent.$.unfunkyUI();
	}
 

	$(document).ready(function(){
		//提示信息
		showTip();
		
	<s:iterator value="curworklist" id="cwl">
	var cid='<s:property value="%{cwl}"/>';

 	$("[name='wids']").each(function(){	
		if($(this).val()==cid){
	    	$(this).attr("checked",'true');
 	   	}
	 })
	 </s:iterator>
 	

	});
	function closes(){
		window.parent.$.unfunkyUI_zdy();
	}
	
//-->
</script>
</head>
<body >
<div class="gbg">

<div class="title_div_sq">
    <div class="title_text">库工选择</div>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
	<tr>
    <td><div onclick="javascript:chose();" class="imgbtn"><span class="imgbtn_add"></span>选择</div></td>
    <td><div onclick="javascript:closes();" class="imgbtn"><span class="imgbtn_delete"></span>关闭</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="97%">
<form name="listForm" action="" method="post">
	<input type="hidden" name="id" value="<s:property value="id"/>" />
    <tr class="table_th">
	<td width="5%" align="center">序号</td>
	<td width="5%" align="center"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>	
	<td width="20%" align="center">编号</td>
	<td width="20%" align="center">姓名</td>
	<td width="30%" align="center">备注</td>
	</tr>
	<s:iterator value="worklist" status="status">
			<s:if test="#status.odd == true">
				<tr class="table_1">
			</s:if>
			<s:else>
				<tr class="table_2">
			</s:else>
			<td align="center"><s:property value="currentPage.start + #status.count"/></td> 
			<td  align="center"><input class="checkbox" name="wids" type="checkbox" value="<s:property value="id"/>"/></td>
	   		<td align="center"><s:property value="num"/></td>
	   		<td align="center"><s:property value="name"/></td>
	  		<td><s:property value="remark"/></td>
	  </tr> 
	</s:iterator>
	</form>
</table>
</div>
</body>
</html>
