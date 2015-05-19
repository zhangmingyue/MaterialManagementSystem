<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.funkyUI.js"></script>
<script language="javascript"> 
function save(){

	if(verify()){
		document.editForm.submit();
		saveOkTip('保存中，请稍候....' , 'btn' , 'saveBtn');
	}
    function verify(){
	if(!Validator.Validate(document.editForm,2)) return false;
	return true;
}
function back(){
	window.location.href = "storageinfo!pagedQuery.action";
	
}
function choosework(id){  

	$.funkyUI({
		url:'storageinfo!queryAllWorklist.action?id='+id,
		css:{width:"700",height:"400",top:"0"}
	});
	
}
function callbak(){
	//alert("aa");
	setTimeout(function(){
	
	var id=$("#sid").val();
	window.location.href="storageinfo!queryById.action?id="+id;
	},2000);
	
}
function test(){
	
	alert("test");
}
$(document).ready(function(){
	//提示信息

	showTip();
});
</script>
</head>
<body>

<div class="position_div">
	<div class="position_div_text">当前位置：基本信息管理 > 库房信息</div>
</div>

<div class="title_div">
   	<s:if test="#request.storage.id!=null">
	 <div class="title_text">库房信息编辑</div>

	</s:if>
	<s:else>
	    <div class="title_text">库房信息添加</div>
	</s:else>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <td><div onclick="javascript:save();" class="imgbtn"><span class="imgbtn_noname2"></span>保存</div></td>
    <td><div onclick="javascript:back();" class="imgbtn"><span class="imgbtn_back3"></span>返回</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form  name="editForm" action="storageinfo!save.action" method="post" >
	 <input type="hidden" id="sid" name="storage.id" value="<s:property value="storage.id"/>"/> 
 	<tr class="table_2">
 		 <td width="20%" align="center" >库房编号：<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="storage.num" value="<s:property value="storage.num"/>" dataType="Require" msg="请填写【库房编号】!"/></td>
    </tr>	
    <tr class="table_1">
    	<td  width="20%" align="center" >库房类别：<span class="highlight">*</span></td>
    	<td  >
    		<s:select id="typeid" list="typelist" headerKey="" headerValue="请选择"  name="storage.type_id" 
				   value="storage.type_id"  listKey="id" listValue="name"  style="width:120px;"  cssStyle="width:180px;" dataType="Require" msg="请选择【物资类别】!"></s:select>
	    	
    	</td>
    </tr>
    <tr class="table_2">
    	<td  width="20%" align="center" >库房名称：<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text"  maxlength = "50" name="storage.name" value="<s:property value="storage.name"/>" dataType="Require" msg="请填写【库房名称】!"/></td>
    </tr>
	<tr class="table_1">
   		<td width="20%" align="center" >库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工：&nbsp;</td>
    	<td align="left" >
    	<s:if test="storage.sw.isEmpty">
    			<span onclick="javascript:choosework('<s:property value="storage.id"/>');">点击添加库工</span>
    	</s:if>
    	<s:else>
    		<div onclick="javascript:choosework('<s:property value="storage.id"/>');">
	    		<s:iterator value="storage.sw" status="status">
	 				<s:property value="worker.name"/>&nbsp;
	   			</s:iterator>
    		</div>
    	</s:else> 
    	</td>
    </tr>	
    <tr class="table_2">
    	<td width="20%" align="center" >保&nbsp;管&nbsp;员&nbsp;：&nbsp;</td>
    	<td  >
    		<s:property value="storage.name"/> 
    	</td>
    </tr>
    <tr class="table_1" >
	<td width="20%"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：&nbsp;</td>
    <td colspan="3"  width="80%"><textarea  rows="3"  style="width:99%;"  name="storage.remark"   dataType="LimitB" require="false" min="1" max="100" msg="【备注】最多输入100个汉字!"><s:property value="storage.remark" /></textarea></td>
	</tr>
</form>
</table>


 
</body>
</html>
