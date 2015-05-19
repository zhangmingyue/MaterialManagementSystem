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
		window.location.href = "dept!pagedQuery.action";
	}
	function verify(){
		setSelected("dept.categoryCode","分类属性");
		setSelected("dept.commonCode","一般属性");
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

<div class="position_div">
	<div class="position_div_text">当前位置： 系统管理 > 部门维护</div>
</div>

<div class="title_div">
    <div class="title_text">部门维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
     <td><div id="saveBtn" class="imgbtn" onclick="javascript:save()"><span class="imgbtn_add2"></span>保存</div></td>
    <td><div class="imgbtn" onclick="javascript:back()"><span class="imgbtn_back2"></span>返回</div></td>
    </tr></table></div>
</div>
		<form  id="editForm" name="editForm" action="dept!save.action" method="post">
		<input type="hidden" name="dept.id" value='<s:property value="dept.id"/>'/>
		<input type="hidden" name="dept.code" value='<s:property value="dept.code"/>'/>
		<input type="hidden" name="dept.parentCode" value='<s:property value="dept.parentCode"/>'/>
		<input type="hidden" name="dept.level" value='<s:property value="dept.level"/>'/>
		<input type="hidden" name="dept.state" value='<s:property value="dept.state"/>'/>

		<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
		
			<tr class="table_2">
				<td width="20%">部门名称<span class="highlight">*</span></td>
				<td width="80%"><input size="50" maxlength="100"  class="txt" type="text" name="dept.name" value='<s:property value="dept.name" />'   dataType="Require"  msg="请输入【部门名称】！"/></td>
			</tr>
			<tr class="table_2">
				<td width="20%">通讯地址</td>
				<td width="80%"><input size="50" maxlength="100"  class="txt" type="text" name="dept.address" value='<s:property value="dept.address" />'  /></td>
			</tr>
			<tr class="table_2">
				<td width="20%">邮编</td>
				<td width="80%"><input size="50" maxlength="100"  class="txt" type="text" name="dept.postcode" value='<s:property value="dept.postcode" />'   /></td>
			</tr>
			
			<tr class="table_1">
				<td>分类属性<span class="highlight">*</span></td>
				<td><s:select name="dept.categoryCode" value="dept.categoryCode" list="@com.dqyx.admin.CategoryCode@queryJG()"  headerKey="" headerValue="请选择"  dataType="Require"  msg="请输入【分类属性】！" listKey="id" listValue="name" cssStyle="width:120px;"></s:select></td>
			</tr>
			<tr class="table_2">
				<td>一般属性<span class="highlight">*</span></td>
				<td><s:select name="dept.commonCode" value="dept.commonCode" list="@com.dqyx.admin.CommonCode@queryAll()"  headerKey="" headerValue="请选择"  dataType="Require"  msg="请输入【一般属性】！"  listKey="id" listValue="name" cssStyle="width:120px;"></s:select></td>
			</tr>			
			<tr class="table_1">
				<td>备注</td>
				<td colspan="3">
					<textarea rows="3"  style="width:99%;" name="dept.remark"  dataType="LimitB" require="false" min="1" max="200" msg="【备注】最多输入100个汉字或200个字符!"><s:property value="dept.remark" /></textarea>
					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
