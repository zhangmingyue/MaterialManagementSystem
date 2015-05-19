<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>用户维护</title>
<link href="<%=request.getContextPath()%>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script language="javascript">
	function back(){
		window.location.href = "user!pagedQuery.action";
	}
	function verify(){
		setSelected("user.role.id","所属角色");
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}

	function save(){
		if(verify()){
			if (document.getElementById('role').options[0]=='请选择')
				alert('请选择角色值');
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
	<div class="position_div_text">当前位置： 系统管理 > 用户维护</div>
</div>

<div class="title_div">
    <div class="title_text">用户维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
     <td><div id="saveBtn" class="imgbtn" onclick="javascript:save()"><span class="imgbtn_add2"></span>保存</div></td>
    <td><div class="imgbtn" onclick="javascript:back()"><span class="imgbtn_back2"></span>返回</div></td>
    </tr></table></div>
</div>
	<form  id="editForm" name="editForm" action="user!save.action" method="post">
		<input type="hidden" name="deptId" value='<s:property value="condition.deptId"/>'/>
		<input type="hidden" name="user.id" value='<s:property value="user.id"/>'/>
		<input type="hidden" name="user.state" value='<s:property value="user.state"/>'/>
		<input type="hidden" name="user.loginTime" value='<s:property value="user.loginTime"/>'/>
        
		<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
		
			<tr class="table_2">
				<td width="20%">用&nbsp;户&nbsp;名<span class="highlight">*</span></td>
				<td width="80%"><input size="30" maxlength="10" class="txt" type="text"  name="user.userName" value='<s:property value="user.userName" />'  dataType="English" require="true" msg="登录名称只允许英文字"/></td>
			</tr>
            
			<tr class="table_1">
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码<span class="highlight">*</span></td>
				<td><input size = "30" maxlength = "20" class="txt" type="password"  name="user.password" value="<s:property value="user.password"/>" dataType="Require"  msg="请输入【密码】！" /></td>
			</tr>
			<tr class="table_2">
				<td>真实姓名</td>
				<td><input size="30" maxlength="10" class="txt" type="text"  name="user.realName" value='<s:property value="user.realName" />'    /></td>
			</tr>
			<tr class="table_1">
				<td>所属角色<span class="highlight">*</span></td>
				<td><s:select id="role" name="user.role.id" value="user.role.id"  dataType="Require"  msg="请选择【角色】！"   headerKey="" headerValue="请选择" list="userRoles" listKey="id" listValue="name" /></td>
			</tr>	
			<tr class="table_2">
				<td>身份证号</td>
				<td><input size="30" maxlength="30" class="txt" type="text"  name="user.identification"  value='<s:property value="user.identification" />'/></td>
			</tr>
			<tr class="table_2">
				<td>电子邮箱</td>
				<td><input size="30" maxlength="30" class="txt" type="text"  name="user.email"  value='<s:property value="user.email" />'/></td>
			</tr>
			<tr class="table_2">
				<td>联系电话</td>
				<td><input size="30" maxlength="30" class="txt" type="text"  name="user.telephone"  value='<s:property value="user.telephone" />'/></td>
			</tr>
			
			<tr class="table_2">
				<td>传真</td>
				<td><input size="30" maxlength="30" class="txt" type="text"  name="user.fax"  value='<s:property value="user.fax" />'/></td>
			</tr>
			<tr class="table_1">
				<td>登录状态</td>
				<td><s:select name="user.islogin"  value="user.islogin" list="#{'Y':'允许','N':'不允许'}" style="width:120px;"  /></td>
			</tr>		
			<tr class="table_2">
				<td>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注</td>
				<td colspan="3">
					<textarea rows="3"  style="width:99%;" name="user.remark"  dataType="LimitB" require="false" min="1" max="200" msg="【备注】最多输入100个汉字或200个字符!"><s:property value="user.remark" /></textarea>
					
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
