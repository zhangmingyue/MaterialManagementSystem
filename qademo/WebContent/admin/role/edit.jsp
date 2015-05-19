<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>角色维护</title>
<link href="<%=request.getContextPath()%>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script language="javascript">
	function back(){
		window.location.href = "role!pagedQuery.action";
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
	<div class="position_div_text">当前位置： 系统管理 > 角色维护</div>
</div>

<div class="title_div">
    <div class="title_text">角色维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
     <td><div id="saveBtn" class="imgbtn" onclick="javascript:save()"><span class="imgbtn_add2"></span><!-- <a href="javascript:save();">保存</a> -->保存</div></td>
    <td><div class="imgbtn" onclick="javascript:back()"><span class="imgbtn_back2"></span><!-- <a href="javascript:back();">返回</a> -->返回</div></td>
    </tr></table></div>
</div>
		<form  id="editForm" name="editForm" action="role!save.action" method="post">
		<input type="hidden" name="role.id" value='<s:property value="role.id"/>'/>
		<input type="hidden" name="role.dept.id" value='<s:property value="role.dept.id"/>'/>
		<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
		
			<tr class="table_2">
				<td width="20%">角色编码<span class="highlight">*</span></td>
				<td width="80%"><input size="30" maxlength="10"  class="txt" type="text"  name="role.no" value='<s:property value="role.no" />' dataType="Require"  msg="请输入【角色编码】!"/></td>
			</tr>
			<tr class="table_1">
				<td>角色名称<span class="highlight">*</span></td>
				<td><input  size="30" maxlength="20"  class="txt" type="text"  name="role.name" value='<s:property value="role.name" />' dataType="Require"  msg="请输入【角色名称】!"/></td>
			</tr>		
			<tr class="table_2">
				<td>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注</td>
				<td colspan="3">
					<textarea rows="3"  style="width:99%;" name="role.remark"  dataType="LimitB" require="false" min="1" max="200" msg="【备注】最多输入100个汉字或200个字符!"><s:property value="role.remark" /></textarea>
					
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
