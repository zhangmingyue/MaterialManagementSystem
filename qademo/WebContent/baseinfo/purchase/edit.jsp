<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>购货方信息编辑</title>

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
	window.location.href = "purchinfo!pagedQuery.action";
	
}
function add(){

	window.location.href = "purchinfo!addQuery.action";
}
$(document).ready(function(){
	//提示信息
	showTip();
});
</script>
</head>
<body>

<div class="position_div">
	<div class="position_div_text">当前位置：基本信息管理 > 购货方信息</div>
</div>

<div class="title_div">
   	<s:if test="purchase.id!=null">
	 <div class="title_text">购货方信息编辑</div>

	</s:if>
	<s:else>
	    <div class="title_text">购货方信息添加</div>
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
<form  name="editForm" action="purchinfo!save.action" method="post" >
 	<input type="hidden" name="purchase.purNum" value="<s:property value="purchase.purNum"/>"/>
	 <input type="hidden" name="purchase.id" value="<s:property value="purchase.id"/>"/> 
<input type="hidden" name="purchase.status" value="<s:property value="purchase.status"/>"/> 
 	<tr class="table_2">
 		 <td width="20%" align="center" >企业名称:<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="purchase.name" value="<s:property value="purchase.name"/>" dataType="Require" msg="请填写【企业名称 】!"/></td>
    </tr>	

    <tr class="table_1">
    	<td  width="20%" align="center" >名称缩写:<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="purchase.spell" value="<s:property value="purchase.spell"/>" dataType="English" msg="请填写【名称缩写】，此处只能填写字母!"/></td>
    </tr>
      <tr class="table_2">
    	<td  width="20%" align="center" >所属省份:<span class="highlight">&nbsp;</span></td>
    	<td>
	    	<select name="code.id" width="100px">
		   			<s:iterator value="codes" var="obj">
		   			<s:if test="purchase.provinceNumber == code">
		   				<option selected="selected" value="<s:property value="id" />"><s:property value="name" /></option>
		   			</s:if>
		   			<s:else>
		   				<option value="<s:property value="id" />"><s:property value="name" /></option>
		   			</s:else>
		   			</s:iterator>
	   			</select>
    	</td>
    </tr>
	<tr class="table_1">
 		 <td width="20%" align="center" >联&nbsp;系&nbsp;人:&nbsp;<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="purchase.linkman" value="<s:property value="purchase.linkman"/>" dataType="Chinese" msg="请正确填写【联系人】,此处只能填写中文!"/></td>
    </tr>	
     <tr class="table_2">
    	<td  width="20%" align="center" >联系方式:<span class="highlight">&nbsp;</span></td>
    	<td  ><input size="30" class="txt" type="text" maxlength = "20" type="text" name="purchase.link" value="<s:property value="purchase.link"/>"/></td>
    </tr>
  	<tr class="table_1">
    	<td  width="20%" align="center" >地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:<span class="highlight">&nbsp;</span></td>
    	<td  ><input size="30" class="txt" type="text" maxlength = "20" type="text" name="purchase.addr" value="<s:property value="purchase.addr"/>"/></td>
    </tr>
    <tr class="table_2">
    	<td  colspan="2" align="left" >营业执照：<span class="highlight">&nbsp;</span></td>
    </tr>
    <tr class="table_1">
    	<td  width="20%" align="center" >有效日期:<span class="highlight">&nbsp;</span></td>
    	<td> 
    		<input type="text" name="purchase.businessLicence" class="Wdate" style="width:133px"   dataType="Require"
    	 	value="<s:date format="yyyy-MM-dd" name="purchase.businessLicence"/>" msg="请填写【营业执照-有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
    	</td>
    </tr>
    <tr class="table_2">
    	<td  width="20%" align="center" >年检日期:<span class="highlight">&nbsp;</span></td>
    	<td>
    		<input type="text" name="purchase.blcheckTime" class="Wdate" style="width:133px"   dataType="Require" 
    		value="<s:date format="yyyy-MM-dd" name="purchase.blcheckTime"/>" msg="请填写【营业执照-有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
    	</td>
    </tr>
    <tr class="table_1">
    	<td  colspan="2" align="left"  >组织机构代码证：<span class="highlight">&nbsp;</span></td>
    </tr>
    <tr class="table_2">
    	<td  width="20%" align="center" >有效日期:<span class="highlight">&nbsp;</span></td>
    	<td>
    		<input type="text" name="purchase.organizationLicence" class="Wdate" style="width:133px"   dataType="Require" 
    		value="<s:date format="yyyy-MM-dd" name="purchase.organizationLicence"/>" msg="请填写【组织机构代码证-有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
    	</td>
    </tr>
    <tr class="table_1">
    	<td  width="20%" align="center" >年检日期:<span class="highlight">&nbsp;</span></td>
    	<td>
    		<input type="text" name="purchase.olcheckTime" class="Wdate" style="width:133px"   dataType="Require" 
    		value="<s:date format="yyyy-MM-dd" name="purchase.olcheckTime"/>" msg="请填写【组织机构代码证-有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
    	</td>
    </tr>
    <tr class="table_2">
    	<td colspan="2" align="left"  >药品经营许可证：<span class="highlight">&nbsp;</span></td>
    	
    </tr>

    <tr class="table_1">
    	<td  width="20%" align="center" >有效日期:<span class="highlight">&nbsp;</span></td>
    	<td>
    		<input type="text" name="purchase.medicinebLicence" class="Wdate" style="width:133px"   dataType="Require" 
    		value="<s:date format="yyyy-MM-dd" name="purchase.medicinebLicence"/>" format="yyyy-MM-dd" msg="请填写【药品经营许可证-有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
    	</td>
    </tr>
    <tr class="table_2">
    	<td  colspan="2" align="left"  >税务登记证:<span class="highlight">&nbsp;</span></td>
    	
    </tr>
     <tr class="table_1">
    	<td  width="20%" align="center" >有效日期:<span class="highlight">&nbsp;</span></td>
    	<td>
	    	<input type="text" name="purchase.taxRegister" class="Wdate" style="width:133px"   dataType="Require" 
	    	value="<s:date  format="yyyy-MM-dd" name="purchase.taxRegister"/>" format="yyyy-MM-dd" msg="请填写【税务登记证-有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
    	</td>
    </tr>
     <tr class="table_2">
    	<td  width="20%" align="center" >是否为一般纳税人:<span class="highlight">&nbsp;</span></td>
    	<td>
    	
    		<input type="radio" value="0" name="purchase.commonTaxPayer" 
    			<s:if test="purchase.commonTaxPayer == 0">
    				checked="checked"
    			</s:if>/>是&nbsp;&nbsp;&nbsp;&nbsp; 
    		<input type="radio" value="1" name="purchase.commonTaxPayer"  
    			<s:if test="purchase.taxRegister == 1">
    				checked="checked"
    			</s:if>/>否
    	</td>
    </tr>
     <tr class="table_1">
    	<td  width="20%" align="center" >合格供货方备案表:<span class="highlight">&nbsp;</span></td>
    	<td>
	    	<input type="radio" value="0" name="purchase.purCopyTable"
	    		<s:if test="purchase.purCopyTable == 0">
    				checked="checked"
    			</s:if>/>有&nbsp;&nbsp;&nbsp;&nbsp; 
	    	<input type="radio" value="1" name="purchase.purCopyTable" 
	    		<s:if test="purchase.purCopyTable == 1">
    				checked="checked"
    			</s:if>/>无
    	</td>
    </tr>
     <tr class="table_2">
    	<td  width="20%" align="center" >产品购销合同:<span class="highlight">&nbsp;</span></td>
    	<td>
	    	<input type="radio" value="0" name="purchase.agreement" 
	    		<s:if test="purchase.agreement == 0">
    				checked="checked"
    			</s:if>/>有&nbsp;&nbsp;&nbsp;&nbsp; 
	    	<input type="radio" value="1" name="purchase.agreement" 
	    		<s:if test="purchase.agreement == 1">
    				checked="checked"
    			</s:if>/>无
    	</td>
    </tr>
   
    <tr class="table_1" >
	<td width="20%"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:<span class="highlight">&nbsp;</span></td>
    <td colspan="3"  width="80%"><textarea  rows="3"  style="width:99%;"  name="purchase.remark"   dataType="LimitB" require="false" min="1" max="100" msg="【备注】最多输入50个汉字!"><s:property value="purchase.remark" /></textarea></td>
	</tr>
</form>
</table>


 
</body>
</html>
