<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page pageEncoding="UTF-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "code!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/util.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/interface/mpCategoryService.js'></script>
<title>乳品企业信息</title>
<script language="javascript"> 
<!--

	function queryById(id){
		window.location.href = "code!queryById.action?id="+id;
	}
	
	function addCode(ccid){
		window.location.href = "code!showCode.action?id="+ccid; 
	}

	function add(){
		if(verify()){
			document.editForm.submit();
			saveOkTip('添加中，请稍候....' , 'btn' , 'saveBtn');
		}
	}
	
	function verify(){
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}
	
	function remov(){   
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		if(confirm("您确定要删除选中的记录吗？")==true){
			document.listForm.action ="code!remove.action"; 
			document.listForm.target="_self";
			document.listForm.submit();
			saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');
		}
	}	
	$(document).ready(function(){
		//提示信息
		showTip();
	});

//-->
</script>
</head>
<body><div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 系统管理 > 代码维护</div>
</div>
<div class="title_div">
    <div class="title_text">代码维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <td><div id="delBtn" class="imgbtn" onclick="javascript:remov()"><span class="imgbtn_delete"></span>删除</div></td>
    </tr></table></div>
</div>

<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form name="listForm" action="" method="post">
    <tr class="table_th"> 
	<td align="center" width="5%">序号</td>
	<td align="center" width="15%">操作</td>
	<td align="center" width="5%"><input type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" class="checkbox"></td>	
	<td width="20%">代码类别编码</td>
	<td width="20%">代码类别名称</td>
	<td width="35%">说明</td>
</tr>
<s:iterator value="currentPage.data" status="status">
<s:if test="#status.odd == true">
		<tr class="table_1">
		</s:if>
		<s:else>
		<tr class="table_2">
		</s:else>
		<td align="center"><s:property value="currentPage.start + #status.count"/></td>
		<!--<td align="center"><a href="javascript:queryById('<s:property value="id"/>');">修改</a>&nbsp;|&nbsp;<a href="javascript:addCode('<s:property value="id"/>');">添加</a></td>
		-->
		<td>
		<div class="imgbtn2" onclick="javascript:queryById('<s:property value="id"/>')" ><span class="imgbtn_edit"></span>编辑</div>
		<div class="imgbtn2" onclick="javascript:addCode('<s:property value="id"/>')" ><span class="imgbtn_add"></span>添加</div>
		</td>
		<td align="center"><input  align="center" name="ids" type="checkbox" value="<s:property value="id"/>" class="checkbox"/></td>
   		<td><s:property value="code"/></td> 
   		<td><s:property value="name"/></td>
  		<td><s:property value="remark"/></td>
  </tr>
</s:iterator>
</form>
<form  id="editForm" name="editForm" action="code!save.action" method="post">
    <tr class="table_2" align="">
            <!--<td align="center" colspan="3"><div class="imgbtn"><span class="imgbtn_add"></span><a href="javascript:add();">添加</a></div></td>-->
              <td align="right" colspan="3"><div id="saveBtn" class="imgbtn" onclick="javascript:add();"><span class="imgbtn_add"></span>添加</div></td>
            <td><input size = "20"  maxlength="20"  name="codeCategory.code" class="txt"  dataType="Require"  msg="请输入【代码类别编码】！"/></td>
            <td><input size = "20" maxlength="50"   name="codeCategory.name" class="txt"  dataType="Require"  msg="请输入【代码类别名称】！"/></td>
            <td><input size = "40" maxlength="100"  name="codeCategory.remark" class="txt"/></td>
     </tr>
</form>
<tr><td colspan="6" align="right"><%@ include file="/inc/pagetable.inc"%></td></tr>
</table></div>
</body>
</html>
