<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>代码维护</title>
<link href="<%=request.getContextPath()%>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script language="javascript">
	function back(){
		window.location.href = "code!pagedQuery.action";
	}
	function verify(){
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}

	function save(){
		if(verify()){
			document.editForm.submit();
			saveOkTip('保存中，请稍候....' , 'btn' , 'saveBtn');
		}
	}
	
	function setSelected(name,msg){
		ControlUtils.getControl(name).dataType="Require";
		ControlUtils.getControl(name).msg="请填写【"+msg+"】！";
		ControlUtils.getControl(name).require="true";
	}
	$(document).ready(function(){
		//提示信息
		showTip();
	});
	
</script>
</head>
<body>
<div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 系统管理 > 代码维护</div>
</div>

<div class="title_div">
    <div class="title_text">代码维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
     <!--<td><div class="imgbtn"><span class="imgbtn_add2"></span><a href="javascript:save();">保存</a></div></td>
    <td><div class="imgbtn"><span class="imgbtn_back2"></span><a href="javascript:back();">返回</a></div></td>
    --><td><div id="saveBtn" class="imgbtn" onclick="javascript:save()"><span class="imgbtn_add2"></span>保存</div></td>
    <td><div class="imgbtn" onclick="javascript:back()"><span class="imgbtn_back2"></span>返回</div></td>
    </tr></table></div>
</div>
	<form  id="editForm" name="editForm" action="code!save.action" method="post">
		<input type="hidden" name="codeCategory.id" value='<s:property value="codeCategory.id"/>'/>
		<input type="hidden" name="codeCategory.state" value='<s:property value="codeCategory.state"/>'/>
        
		<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
		
			<tr class="table_2">
				<td width="20%">类别编码<span class="highlight">*</span></td>
				<td  width="80%"><input size = "30"  maxlength="20"  class="txt" name="codeCategory.code" value='<s:property value="codeCategory.code" />'   dataType="Require"  msg="请输入【代码类别编码】！"/></td>
			</tr>
			<tr class="table_1">
				<td>类别名称<span class="highlight">*</span></td>
				<td><input type="text" size="30" maxlength = "50" class="txt" name="codeCategory.name" value="<s:property value="codeCategory.name"/>"    dataType="Require"  msg="请输入【代码类别名称】！"/></td>
			</tr>
			<tr class="table_2">
				<td>说&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;明</td>
				<td><input type="text"  size="50" maxlength = "100" class="txt"  name="codeCategory.remark" value='<s:property value="codeCategory.remark" />'/></td>
			</tr>
		</table>
		</td>
		</tr>
		</table>
	</form></div>
</body>
</html>
