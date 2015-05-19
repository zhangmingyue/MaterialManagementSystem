<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />


<script language="javascript"> 
function save(){

	if(verify()){
		document.editForm.submit();
		saveOkTip('保存中，请稍候....' , 'btn' , 'saveBtn');
	}
}
function verify(){
	if(!Validator.Validate(document.editForm,2)) return false;
	return true;
}
function back(){
	window.location.href = "workerinfo!pagedQuery.action";
	
}
function add(){

	window.location.href = "workerinfo!addQuery.action";
}
$(document).ready(function(){
	//提示信息
	showTip();
});
</script>
</head>
<body>

<div class="position_div">
	<div class="position_div_text">当前位置：基本信息管理 > 库工信息</div>
</div>

<div class="title_div">
   	<s:if test="#request.workerinfo.id!=null">
	 <div class="title_text">库工信息编辑</div>

	</s:if>
	<s:else>
	    <div class="title_text">库工信息添加</div>
	</s:else>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <td><div onclick="javascript:save();" class="imgbtn"><span class="imgbtn_noname2"></span>保存</div></td>
   	<td><div onclick="javascript:add();" class="imgbtn"><span class="imgbtn_add"></span>继续添加</div></td>
    <td><div onclick="javascript:back();" class="imgbtn"><span class="imgbtn_back3"></span>返回</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form  name="editForm" action="workerinfo!save.action" method="post" >
	 <input type="hidden" name="wf.id" value="<s:property value="wf.id"/>"/> 

 	<tr class="table_2">
 		 <td width="20%" align="center" >库工编号:<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="wf.num" value="<s:property value="wf.num"/>" dataType="Require" msg="请填写【库工编号】!"/></td>
    </tr>	
    <tr class="table_1">
    	<td  width="20%" align="center" >库工姓名:<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="wf.name" value="<s:property value="wf.name"/>" dataType="Require" msg="请填写【库工姓名】!"/></td>
    </tr>
	<tr class="table_2">
   		<td width="20%" align="center" >负责库房:&nbsp;</td>
    	<td   >
			<s:iterator value="wf.sw" status="status">
	   			<s:property value="store.name"/>&nbsp;
	   		</s:iterator>
		</td>
    </tr>	
    <tr class="table_2" >
	<td width="20%"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</td>
    <td colspan="3"  width="80%"><textarea  rows="3"  style="width:99%;"  name="wf.remark"   dataType="LimitB" require="false" min="1" max="100" msg="【备注】最多输入50个汉字!"><s:property value="wf.remark" /></textarea></td>
	</tr>
</form>
</table>


 
</body>
</html>
