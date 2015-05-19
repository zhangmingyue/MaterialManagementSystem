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
}
function verify(){

	if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
	return true; 
}
function back(){
	window.location.href = "managerinfo!pagedQuery.action";
	
}
function choosework(id){

	var a=$.funkyUI({
		url:'managerinfo!addGoodsInfo.action?id='+id,
		css:{width:"800",height:"400",top:"0"}
	});
	
}

function callbak(){
	$('#saveb').hide();
	setTimeout(function(){
	
	var id=$("#mid").val();

	window.location.href="managerinfo!queryById.action?id="+id;
	},2000);
	
}
function add(){
	var val=$("#sid").val();
	alert(val);
	window.location.href = "managerinfo!addQuery.action?curselected="+val;
}
$(document).ready(function(){
	//提示信息
	showTip();
	var val=<s:property value="curselected"/>
	  $("#sid").get(0).value =val;
	  
	 
});
</script>
</head>
<body>

<div class="position_div">
	<div class="position_div_text">当前位置：基本信息管理 > 保管员信息</div>
</div>

<div class="title_div">
   	<s:if test="#request.manager.id!=null">
	 <div class="title_text">保管员信息编辑</div>

	</s:if>
	<s:else>
	    <div class="title_text">保管员信息添加</div> 
	</s:else>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <td><div id="saveb"  onclick="javascript:save();" class="imgbtn"><span class="imgbtn_noname2"></span>保存</div></td>
    <td><div onclick="javascript:back();" class="imgbtn"><span class="imgbtn_back3"></span>返回</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form id="editForm" name="editForm" action="managerinfo!save.action" method="post" >
	 <input type="hidden" id="mid" name="manager.id" value="<s:property value="manager.id"/>"/> 
 		<input type="hidden" name="manager.uid" value="<s:property value="manager.uid"/>"/> 
 	<tr class="table_2">
 		 <td width="20%" align="center" >姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="manager.name" value="<s:property value="manager.name"/>" dataType="Require" msg="请填写【姓名】!"/></td>
    </tr>	
    <tr class="table_1">

    	<td  width="20%" align="center" >负责库房：<span class="highlight">*</span></td>
    	<td  >
    	<s:select  list="storagelist"  headerKey="" headerValue="请选择"  name="manager.storage.id" 
				value="manager.storage.id"  listKey="id" listValue="name" style="width:120px;"  cssStyle="width:180px;" dataType="Require" msg="请选择【库房】!"></s:select>
    	</td>
    </tr>
     <tr class="table_2">
   		<td width="20%" align="center" >对应物资</td>
    	<td align="left" >
    	<s:if test="manager.sgs.isEmpty">
    		<span onclick="javascript:choosework('<s:property value="manager.id"/>');">点击添加对应的物资</span>
    	</s:if>
    	<s:else>
    		<div onclick="javascript:choosework('<s:property value="manager.id"/>');">
	    		<s:iterator value="manager.sgs" status="status">
	 				<s:property value="goods.name"/>&nbsp;<s:property value="goods.pknorms"/>&nbsp;&nbsp;
	   			</s:iterator>
    		</div>
    	</s:else> 
    	</td>
    </tr>	
    <tr class="table_1" >
	<td width="20%"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
    <td colspan="3"  width="80%"><textarea  rows="3"  style="width:99%;"  name="manager.remark"   dataType="LimitB" require="false" min="1" max="100" msg="【备注】最多输入50个汉字!"><s:property value="manager.remark" /></textarea></td>
	</tr>
</form>
</table>


 
</body>
</html>
