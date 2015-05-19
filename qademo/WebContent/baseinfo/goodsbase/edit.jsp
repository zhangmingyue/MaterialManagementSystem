<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script language="javascript" src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script language="javascript" src='<%= request.getContextPath() %>/dwr/interface/goodsbaseService.js'></script>
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
	window.location.href = "goodsbase!pagedQuery.action";
	
}
function setclname(){
	var cn=$("#cid  option:selected").text();
	$("#cname").val(cn);
	var id=$("#cid  option:selected").val();
	goodsbaseService.queryType(id,checkCode);
}

function checkCode(data){

	var code=data;
	$('#code').val(code);
	if(code=="002005"){
		$('#cpjx').attr("dataType","Require");
		$('#cpjx').attr("msg","请选择【产品剂型】!");
	}else{
		$('#cpjx').removeAttr("dataType","Require");
		$('#cpjx').removeAttr("msg","请选择【产品剂型】!");
	}
	
}
function showzjt(){
	
}
function add(){
	var val=$("#cid option:selected").val();
	window.location.href = "goodsbase!addQuery.action?curselected="+val;
}

function choosearea(id){
	if(id==""){
		alert("请先保存物资基本信息后，添加产地！");
	}else{
		var a=$.funkyUI({
			url:'goodsbase!addArea.action?id='+id,
			css:{width:"800",height:"400",top:"0"}
		});
		
	}
	
}
function callbak(){
	setTimeout(function(){
	var id=$("#gbid").val();
	window.location.href="goodsbase!queryById.action?id="+id;
	},1500);
	
}

$(document).ready(function(){
	//提示信息
	showTip();
	var val='<s:property value="curselected"/>';
	var cname=null;
	if(val!=""){

		$("#cid").get(0).value =val;	
		cname=$("#cid").find("option:selected").text();
		goodsbaseService.queryType(val,function(code){
			$('#code').val(code);
			
		});
	}
	$("#cname").val(cname);
	var cid=$("#cid").find("option:selected").val();
	if(cid=="1"){
		$('#cpjx').attr("dataType","Require");
		$('#cpjx').attr("msg","请选择【产品剂型】!");
	}
	
	
});
</script>
</head>
<body>

<div class="position_div">
	<div class="position_div_text">当前位置：基本信息管理 > 物资基本信息</div>
</div>

<div class="title_div">
   	<s:if test="#request.gb.id!=null">
	 <div class="title_text">物资基本信息编辑</div>

	</s:if>
	<s:else>
	    <div class="title_text">物资基本信息添加</div> 
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
<form  name="editForm" action="goodsbase!save.action" method="post" >
	 <input type="hidden" id="gbid" name="gb.id" value="<s:property value="gb.id"/>"/> 
 	 <input type="hidden" id="cname" name="gb.cl_name" value="<s:property value="gb.cl_name"/>"/>  
 	 <input type="hidden" id="code" name="gb.cl_code" value="<s:property value="gb.cl_code"/>"/>   
 	  
 	 <tr class="table_1">
 	<td width="20%" align="center" >物资编号：<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "30" type="text" name="gb.num" value="<s:property value="gb.num"/>" dataType="Require" msg="请填写【物资编号】!"/></td>
    </tr>	
    <tr class="table_2">
 		 <td width="20%" align="center" >物资名称：<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="gb.name" value="<s:property value="gb.name"/>" dataType="Require" msg="请填写【物资名称】!"/></td>
    </tr>
    <tr class="table_1">
 		 <td width="20%" align="center" >物资简码：<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="gb.spell" value="<s:property value="gb.spell"/>" dataType="Require" msg="请填写【物资简码】!"/></td>
    </tr>
    <tr class="table_2">
 		 <td width="20%" align="center" >物资类别：<span class="highlight">*</span></td>
    	<td  >
    	<s:select id="cid" list="codelist" headerKey="" headerValue="请选择"  name="gb.cl_id" onchange="setclname();"
			   value="gb.cl_id"  listKey="id" listValue="name"  cssStyle="width:140px;" dataType="Require" msg="请选择【物资类别】!"></s:select>
    	</td>
    </tr>
	<tr class="table_1">
 		 <td width="20%" align="center" >计量单位：<span class="highlight">*</span></td>
    	<td  ><input  class="txt" type="text" maxlength = "2" type="text" name="gb.unit" value="<s:property value="gb.unit"/>" dataType="Require" msg="请填写【计量单位】!"/></td>
    </tr>
    <tr class="table_2">
 		 <td width="20%" align="center" >包装规格(盒、kg/件)：</td>
    	<td  ><input  class="txt" maxlength = "6" type="text" name="gb.norms" value="<s:property value="gb.norms"/>"/></td>
    </tr>
    <tr class="table_1">
 		 <td width="20%" align="center" >最小包装规格(粒、袋/盒)：</td>
    	<td  ><input  class="txt" type="text" maxlength = "2" type="text" name="gb.pknorms" value="<s:property value="gb.pknorms"/>" /></td>
    </tr>
     <tr class="table_2">
 		 <td width="20%" align="center" >产品规格(g/粒、袋)：</td>
    	<td  ><input  class="txt" type="text" maxlength = "8" type="text" name="gb.pronorms" value="<s:property value="gb.pronorms"/>" /></td>
    </tr>
     <tr class="table_1">
 		 <td width="20%" align="center" >GMP规格：</td>
    	<td  ><input  class="txt" type="text" maxlength = "20" type="text" name="gb.gmpnorms" value="<s:property value="gb.gmpnorms"/>" /></td>
    </tr>
    <!--g/dai dia/he   -->
     <tr class="table_2">
 		 <td width="20%" align="center" >包装单位：</td>
    	<td  ><input  class="txt" type="text" maxlength = "2" type="text" name="gb.pkunit" value="<s:property value="gb.pkunit"/>" /></td>
    </tr>
    <tr class="table_1">
    <s:if test="curselected==null">
		
	 		<td width="20%" align="center" >供应商：</span></td>
	    	<td  >
	    		<s:if test="gb.sgs.isEmpty">
	    		<span >暂无供应商</span>
   	</s:if>
   	<s:else>
   		<div>
    		<s:iterator value="gb.sgs" status="status">
 				<s:property value="supplier.name"/>&nbsp;
   			</s:iterator>
   		</div>
    	</s:else> 
    	</td>
    
    </s:if>
    </tr>
    <s:if test="#session.tcode==\"002002\"">
	    <tr class="table_2"  >
		<td width="20%"  align="center">中间体：</td>
	    <td colspan="3"  width="80%">
	    	<s:if test="#request.gb.id!=null">
	   			<input type="radio"  name="gb.status" class="radio"  value="2"  <s:if test="gb.status==\"2\"">checked="checked"</s:if>  />是
	   			<input type="radio"  name="gb.status" class="radio"  value="1"  <s:if test="gb.status==\"1\"">checked="checked"</s:if>  />否
	   		</s:if>
	   		<s:else>
	   			<input type="radio"  name="gb.status" class="radio"  value="2"   />是
	   			<input type="radio"  name="gb.status" class="radio"  value="1"  checked="checked" />否
	   		</s:else>
	   	</td>
		</tr>
		
		<tr class="table_1"  >
		<td width="20%"  align="center">自动计算：</td>
	    <td colspan="3"  width="80%">
	    	<s:if test="#request.gb.id!=null">
	   			<input type="radio"  name="gb.isauto" class="radio"  value="1"  <s:if test="gb.isauto==\"1\"">checked="checked"</s:if>  />是
	   			<input type="radio"  name="gb.isauto" class="radio"  value="0"  <s:if test="gb.isauto==\"0\"">checked="checked"</s:if>  />否
	   		</s:if>
	   		<s:else>
	   			<input type="radio"  name="gb.isauto" class="radio"  value="1"   />是
	   			<input type="radio"  name="gb.isauto" class="radio"  value="0"  checked="checked" />否
	   		</s:else>
	   	</td>
		</tr>
	</s:if>
	<s:else>
	 <input type="hidden" id="code" name="gb.status" value="<s:property value="gb.status"/>"/>  
	</s:else>
    <s:if test="#session.tcode==\"002001\"">
		<tr class="table_1">
	   		<td width="20%" align="center" >产地：</td>
	    	<td align="left" >
	    	<s:if test="arealist.isEmpty">
	    		<span onclick="javascript:choosearea('<s:property value="gb.id"/>');">点击添加产地</span>
	    	</s:if>
	    	<s:else>
	    		<div onclick="javascript:choosearea('<s:property value="gb.id"/>');">
		    		<s:iterator value="arealist" status="status">
		 				<s:property value="name"/>&nbsp;
		   			</s:iterator>
	    		</div>
	    	</s:else> 
	    	</td>
	    </tr>	
		
	    
	   <tr class="table_2"  >
		<td width="20%"  align="center">药材类别：</td>
	    <td colspan="3"  width="80%">
	    	<s:if test="#request.gb.id!=null">
	    		<input type="radio"  name="gb.drugtype" class="radio"  value="0"  <s:if test="gb.isauto==\"0\"">checked="checked"</s:if>  />普通
	   			<input type="radio"  name="gb.drugtype" class="radio"  value="1"  <s:if test="gb.isauto==\"1\"">checked="checked"</s:if>  />饮片
	   			<input type="radio"  name="gb.drugtype" class="radio"  value="0"  <s:if test="gb.isauto==\"2\"">checked="checked"</s:if>  />剧毒贵细
	   		</s:if>
	   		<s:else>
	   			<input type="radio"  name="gb.drugtype" class="radio"  value="0"   />普通
	   			<input type="radio"  name="gb.drugtype" class="radio"  value="1"  checked="checked" />饮片
	   			<input type="radio"  name="gb.drugtype" class="radio"  value="2"  checked="checked" />剧毒贵细
	   		</s:else>
	   	</td>
	</tr>
	</s:if>
	<tr class="table_2">
 		 <td width="20%" align="center" >产品剂型：</td>
    	<td  >
    	<s:select id="cpjx" list="agelist" headerKey="" headerValue="请选择"  name="gb.agetype" 
			   value="gb.agetype"  listKey="name" listValue="name"    cssStyle="width:140px;"  ></s:select>
    	</td>
    </tr>
    <tr class="table_1">
 		 <td width="20%" align="center" >国药准字：</td>
    	<td  ><input  class="txt" type="text" maxlength = "9" type="text" name="gb.medicalPermitment" value="<s:property value="gb.medicalPermitment"/>" /></td>
    </tr>
    <tr id="bz" class="table_2" >
	<td width="20%"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
    <td colspan="3"  width="80%"><textarea  rows="3"  style="width:99%;"  name="gb.remark"   dataType="LimitB" require="false" min="1" max="100" msg="【备注】最多输入50个汉字!"><s:property value="gb.remark" /></textarea></td>
	</tr>

</form>
</table>


 
</body>
</html>
