<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/util.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/interface/docService.js'></script>
<title>乳品企业信息</title>
<script language="javascript"> 
<!--
	function back(){
		window.location.href = "code!pagedQuery.action";
	}
	
	function queryById(id){
		window.location.href = "code!queryById.action?id="+id;
	}
	
	function addCode(ccid){
		window.location.href = "code!showCode.action?id="+id;
	}

	function add(){
		if(verify()){
			document.editForm.submit();
			saveOkTip('添加中，请稍候....' , 'btn' , 'saveBtn');
		}
	}
	
	function save(num){
		if(verifyChange(num)){
			$("#form_"+num).submit();
			saveOkTip('保存中，请稍候....' , 'btn' , 'saveBtn1');
		}
	}
	
	function verifyChange(num){
		if(!Validator.Validate(document.getElementById('form_'+num),2)) return false;
		return true;
	}
	
	function verify(){
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}
	
	function remov(codeId){   
		if(confirm("您确定要删除选中的记录吗？")==true){
			window.location.href = "code!removeCode.action?codeId="+codeId;
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
    <!--<td><div class="imgbtn"><span class="imgbtn_back2"></span><a href="javascript:back();">返回</a></div></td>
     --><td><div class="imgbtn" onclick ="javascript:back();"><span class="imgbtn_back2"></span>返回</div></td>
    </tr></table></div>
</div>


<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
   <tr class="table_th">  
	<td align="center" width="5%">序号</td>
	<td align="center" width="15%">操作</td>	
	<td width="20%">代码类别编码</td>
	<td width="20%">代码类别名称</td>
	<td width="40%">说明</td>

</tr>
<s:iterator value="codeList" status="status">
<form  id="form_<s:property value="#status.count"/>" name="form_<s:property value="#status.count"/>" action="code!saveCode.action" method="post">
<input type="hidden" name="code.id" value='<s:property value="id"/>'/>
<input type="hidden" name="code.state" value='<s:property value="state"/>'/>
<input type="hidden" name="code.codeCategory.id" value='<s:property value="codeCategory.id"/>'/>
<s:if test="#status.odd == true">
		<tr class="table_1">
		</s:if>
		<s:else>
		<tr class="table_2">
		</s:else>
		<td align="center"><s:property value="#status.count"/></td>
		<!--<td align="center"><a href="javascript:save('<s:property value="#status.count"/>');">保存</a>&nbsp;|&nbsp;<a href="javascript:remove('<s:property value="id"/>');">删除</a></td>-->
		<td align="center">
		<div id="saveBtn1" class="imgbtn2" onclick="javascript:save('<s:property value="#status.count"/>');"><span class="imgbtn_add2"></span>保存</div>
		<div class="imgbtn2" id="delBtn" onclick="javascript:remov('<s:property value="id"/>');"><span class="imgbtn_delete"></span>删除</div>
		
		</td>
   		<td><input size = "15"  maxlength="30" class="input" name="code.code" value="<s:property value="code"/>" msg="请输入【代码类别编码】！"/></td>
   		<td><input size = "15"  maxlength="30" class="input" name="code.name" value="<s:property value="name"/>" dataType="Require"  msg="请输入【代码类别名称】！"/></td>
  		<td><input size = "15"  maxlength="30" class="input" name="code.remark" value="<s:property value="remark"/>"/></td>
  </tr>
</form>
</s:iterator>

<form  id="editForm" name="editForm" action="code!saveCode.action" method="post">
<input type="hidden" name="code.codeCategory.id" value='<s:property value="codeCategoryId"/>'/>
			<tr class="table_2">
					<!--<td align="center" colspan="2"><div class="imgbtn"><span class="imgbtn_add"></span><a href="javascript:add();">添加</a></div></td>-->
					<td align="center" colspan="2"><div id="saveBtn" class="imgbtn2" onclick="javascript:add()"><span class="imgbtn_add"></span>添加</div></td>
					<td><input size = "15"  maxlength="30" class="input" name="code.code" dataType="Require"  msg="请输入【代码类别编码】！"/></td>
					<td><input size = "15" maxlength="50"  class="input" name="code.name" dataType="Require"  msg="请输入【代码类别名称】！"/></td>
					<td><input size = "15" maxlength="100" class="input" name="code.remark" /></td>
			 </tr>
</form>
</table></div>
</body>
</html>
