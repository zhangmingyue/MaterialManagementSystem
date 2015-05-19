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
	if(!Validator.Validate(document.editForm,2)) return false;
	return true;
}
function back(){
	window.location.href = "supinfo!pagedQuery.action";
	
}
function add(){

	window.location.href = "supinfo!addQuery.action";
}

function choosework(id){

	var a=$.funkyUI({
		url:'supinfo!addGoodsInfo.action?id='+id,
		css:{width:"800",height:"400",top:"0"}
	});
	
}
function callbak(){
	$('#saveb').hide();
	setTimeout(function(){
	
	var id=$("#sid").val();
	window.location.href="supinfo!queryById.action?id="+id;
	},2000);
	
}

$(document).ready(function(){
	//提示信息
	showTip();
});
</script>
</head>
<body>

<div class="position_div">
	<div class="position_div_text">当前位置：基本信息管理 > 供应商信息</div>
</div>

<div class="title_div">
   	<s:if test="#request.supplier.id!=null">
	 <div class="title_text">供应商信息编辑</div>

	</s:if>
	<s:else>
	    <div class="title_text">供应商信息添加</div>
	</s:else>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <td><div id="saveb" onclick="javascript:save();" class="imgbtn"><span class="imgbtn_noname2"></span>保存</div></td>
   	<td><div onclick="javascript:add();" class="imgbtn"><span class="imgbtn_add"></span>继续添加</div></td>
    <td><div onclick="javascript:back();" class="imgbtn"><span class="imgbtn_back3"></span>返回</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form  name="editForm" action="supinfo!save.action" method="post" >
	 <input type="hidden" id="sid" name="supplier.id" value="<s:property value="supplier.id"/>"/> 
	<input type="hidden" name="supplier.status" value="<s:property value="supplier.status"/>"/> 
	<input type="hidden" name="supplier.cl_id" value="<s:property value="supplier.cl_id"/>"/> 
	<input type="hidden" name="supplier.cl_num" value="<s:property value="supplier.cl_num"/>"/> 
 	<tr class="table_2">
 		 <td width="20%" align="center" >企业名称:<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="supplier.name" value="<s:property value="supplier.name"/>" dataType="Require" msg="请填写【企业名称 】!"/></td>
    </tr>	

    <tr class="table_1">
    	<td  width="20%" align="center" >名称缩写:<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="supplier.spell" value="<s:property value="supplier.spell"/>" dataType="English" msg="请填写【名称缩写】，此处只能填写字母!"/></td>
    </tr>
	<tr class="table_2">
 		 <td width="20%" align="center" >联&nbsp;系&nbsp;人:&nbsp;<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="supplier.linkman" value="<s:property value="supplier.linkman"/>" dataType="Chinese" msg="请填写【联系人】!"/></td>
    </tr>	
     <tr class="table_1">
    	<td  width="20%" align="center" >联系方式:<span class="highlight">&nbsp;</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="supplier.link" value="<s:property value="supplier.link"/>"/></td>
    </tr>
  	<tr class="table_2">
    	<td  width="20%" align="center" >地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:<span class="highlight">&nbsp;</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="supplier.addr" value="<s:property value="supplier.addr"/>"/></td>
    </tr>
    <tr class="table_2">
   		<td width="20%" align="center" >对应物资</td>
    	<td align="left" >
    	<s:if test="supplier.sgs.isEmpty">
    		<span onclick="javascript:choosework('<s:property value="supplier.id"/>');">点击添加对应的物资</span>
    	</s:if>
    	<s:else>
    		<div onclick="javascript:choosework('<s:property value="supplier.id"/>');">
	    		<s:iterator value="supplier.sgs" status="status">
	 				<s:property value="goods.name"/>&nbsp;
	   			</s:iterator>
    		</div>
    	</s:else> 
    	</td>
    </tr>	
    <tr class="table_1" >
	<td width="20%"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:<span class="highlight">&nbsp;</span></td>
    <td colspan="3"  width="80%"><textarea  rows="3"  style="width:99%;"  name="supplier.remark"   dataType="LimitB" require="false" min="1" max="100" msg="【备注】最多输入50个汉字!"><s:property value="supplier.remark" /></textarea></td>
	</tr>
</form>
</table>

</body>
</html>
