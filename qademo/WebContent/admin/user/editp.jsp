<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>部门维护</title>
<link href="<%=request.getContextPath()%>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script language="javascript">
	function back(){
		window.location.href = "<%=request.getContextPath()%>/home.jsp";
	}
	function verify(){
		setSelected("user.role.id","所属角色");
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}

	function save(){
		if(verify()){
			document.editForm.submit();
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
	<div class="position_div_text">当前位置：首页 > 修改密码</div>
</div>

<div class="title_div">
    <div class="title_text">修改密码</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
     <td><div class="imgbtn" onclick="javascript:save()"><span class="imgbtn_add2"></span>保存</div></td>
    </tr></table></div>
</div>

		<form  id="editForm" name="editForm" action="user!savepwd.action" method="post">
		<input type="hidden" name="user.id" value='${user.id }'/>      
		<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
		
			<tr class="table_2">
				<td width="20%">用&nbsp;户&nbsp;名</td>
				<td width="80%">${user.userName}</td>
			</tr>
    		<tr class="table_1">
				<td>真实姓名</td>
				<td>${user.realName}</td>
			</tr>
			<tr class="table_2">
				<td>旧密码<span class="highlight">*</span></td>
				<td><input size = "30" maxlength = "20" class="txt" type="password"  name="user.password" value="<s:property value="user.password"/>" dataType="Require"  msg="请输入【旧密码】！" /></td>
			</tr>
			<tr class="table_1">
				<td>新密码<span class="highlight">*</span></td>
				<td><input size = "30" maxlength = "20" class="txt" type="password"  name="newPassword" value="<s:property value="user.password"/>" dataType="Require"  msg="请输入【新密码】！" /></td>
			</tr>
			<tr class="table_2">
				<td>确认新密码<span class="highlight">*</span></td>
				<td><input size = "30" maxlength = "20" class="txt" type="password"  name="newPasswordt" value="<s:property value="user.password"/>" dataType="Repeat" to="newPassword"  msg="两次输入的密码不一致！" /></td>
			</tr>
			</table>
	</form>
</div>
</body>
</html>
