<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>同行单编辑</title>
<link href="<%=request.getContextPath()%>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script language="javascript">
	function back(){
		window.location.href = "/qademo/document/documentAction!pagedQuery.action";
	}
	function submit(doc_id){
		if(doc_id!=""){
			if(confirm('确定保存运单吗？提交后将不可更改。')){
				window.location.href = "/qademo/document/documentAction!submitDocument.action?doc.doc_id="+doc_id;
			}
		}else{
			alert("请先保存运单");
		}
	}
	function verify(){
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}

	function save(){
		if(verify()){
			if(confirm('确定保存运单吗？')){
				document.editForm.submit();
				saveOkTip('保存中，请稍候....' , 'btn' , 'saveBtn');
			}
		}
	}
	function add(){
		if(Validator.Validate(document.getElementById('cargoForm'),2))
			if(confirm('确定保存货物吗？')){
				document.cargoForm.submit();
				saveOkTip('保存中，请稍候....' , 'btn' , 'saveBtn');
			}
		
	}
	function choosePurchase(){
	alert("sdfsdf");
	/*	$.funkyUI({
			url:'storageinfo!queryAllWorklist.action?id='+id,
			css:{width:"700",height:"400",top:"0"}
		});*/
		
	}
	function setSelected(name,msg){
		ControlUtils.getControl(name).dataType="Require";
		ControlUtils.getControl(name).msg="请填写【"+msg+"】！";
		ControlUtils.getControl(name).require="true";
	}
	$(document).ready(function(){
		//提示信息
		checkIfSave();
		showTip();
	});
	function checkIfSave() {
		var a=$("#docId").val();
		if(a== ""){
			$("#cargoTable").hide();
		}
	
	}
	function remov(id) {
		window.location.href = "document!remove.action?cargo.id="+id;
	}
</script>
<style type="text/css">
td{height:22px;width:80px;border:1px solid #CCC;}
.STYLE1{border:0px solid #FFF}
</style>
</head>
<body >
<div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 同行单管理 > 同行单编辑</div>
</div>

<div class="title_div">
    <div class="title_text">同行单编辑</div>
    <div class="title_other">
	    <table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
	    	<tr>
		     	<td class="STYLE1"><div id="saveBtn" class="imgbtn" onclick="javascript:save()"><span class="imgbtn_add2"></span>保存</div></td>
		    	<td class="STYLE1"align="left"><div onclick="javascript:submit('<s:property value="doc.doc_id"/>');" class="imgbtn"><span class="imgbtn_export"></span>提交</div></td>
		    	<td class="STYLE1"><div class="imgbtn" onclick="javascript:back()"><span class="imgbtn_back2"></span>返回</div></td>
	   		 </tr>
	    </table>
    </div>
</div>
	
<table align="center"  width="1003" border="1" cellpadding="1" cellspacing="1">
<form  id="editForm" name="editForm" action="documentAction!saveDocument.action" method="post">
<input id="docId" name="doc.doc_id" type="hidden" value="<s:property value="doc.doc_id"/>"/>
	  <tr class="table_2">
	    <td align="center">购货单位<span class="highlight">*</span></td>
	    <td colspan="5"><input size = "50"  onclick="choosePurchase()"  maxlength="50"  class="txt" name="doc.company" value="<s:property value="doc.company"/>" dataType="Require"  msg="请输入【购货单位】！"/></td>
	    <td align="center">地&nbsp;&nbsp;址<span class="highlight">*</span></td>
	    <td colspan="5"><input size = "50" onclick="choosePurchase()" maxlength="50"  class="txt" name="doc.address" value="<s:property value="doc.address"/>"  dataType="Require"  msg="请输入【  地        址  】！"/></td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">出库日期<span class="highlight">*</span></td>
	    <td colspan="5"><input type="text" size = "50" value='<s:date name="doc.time" format="yyyy-MM-dd" />' name="doc.time" class="Wdate" style="width:180px"   dataType="Require"  msg="请填写【出库日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" /></td>
	    <td align="center">承运人</td>
	    <td colspan="5"><input size = "50"  maxlength="50"  class="txt" name="doc.transporter" value="<s:property value="doc.transporter"/>"/></td>
	  </tr>
	  <tr class="table_2">
	    <td align="center">区&nbsp;&nbsp;域</td>
	    <td colspan="5"><input size = "50"  maxlength="50"  class="txt" name="doc.zone" value="<s:property value="doc.zone"/>"/></td>
	    <td align="center">保管员</td>
	    <td colspan="5"><input size = "50"  maxlength="50"  class="txt" name="doc.manager" value="<s:property value="doc.manager"/>"/></td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">门&nbsp;&nbsp;卫</td>
	    <td colspan="5"><input size = "50"  maxlength="50"  class="txt" name="doc.keeper" value="<s:property value="doc.keeper"/>"/></td>
	    <td align="center">制单人<span class="highlight">*</span></td>
	    <td colspan="5"><input size = "50"  maxlength="50"  class="txt" name="doc.listmaker" value="<s:property value="doc.listmaker"/>"/></td>
	  </tr>
	  <tr class="table_2">
	    <td  align="center" height="34">复核人<span class="highlight">*</span></td>
	    <td colspan="5"><input size = "50"  maxlength="50"  class="txt" name="doc.checker" value="<s:property value="doc.checker"/>"  dataType="Require"  msg="请输入【 复  核  人 】！"/></td>
	    <td align="center">财&nbsp;&nbsp;务<span class="highlight">*</span></td>
	    <td colspan="5"><input size = "50"  maxlength="50"  class="txt" name="doc.accouting" value="<s:property value="doc.accouting"/>" dataType="Require"  msg="请输入【   财    务   】！"/></td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">备&nbsp;&nbsp;注</td>
	    <td colspan="11"><input size = "154"  maxlength="50"  class="txt" name="doc.remark" value="<s:property value="doc.remark"/>"/></td>
	  </tr>
	  </form>
	</table>
	
	
	<table id="cargoTable"  align="center"  width="1003" border="1" cellpadding="1" cellspacing="1">
	  <tr class="table_2">
	    <td colspan="12">产品信息</td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">序&nbsp;&nbsp;号</td>
	    <td align="center">操&nbsp;&nbsp;作</td>
	    <td align="center">通用名称</td>
	    <td align="center">剂&nbsp;&nbsp;型</td>
	    <td align="center">规&nbsp;&nbsp;格</td>
	    <td align="center">包&nbsp;&nbsp;装</td>
	    <td align="center">出库数量（件）</td>
	    <td align="center">单&nbsp;&nbsp;价</td>
	    <td align="center">合计金额</td>
	    <td align="center">产品批号</td>
	    <td align="center">有效日期</td>
	    <td align="center">国药准字</td>
	  </tr>
	  <s:iterator value="doc.cargos" status="status">
	  <s:if test="#status.odd == true">
		<tr class="table_2">
		</s:if>
		<s:else>
		<tr class="table_1">
		</s:else>	
	    <td align="center"><s:property value="#status.count" /></td>
	    <td align="center"><div id="delBtn" class="imgbtn" style="color:black;" onclick="javascript:remov(<s:property value="id"/>)"><span class="imgbtn_delete"></span>删除</div></td>
	    <td align="center"><s:property value="name"/></td>
	    <td align="center"><s:property value="category"/></td>
	    <td align="center"><s:property value="format"/></td>
	    <td align="center"><s:property value="medicPackage"/></td>
	    <td align="center"><s:property value="number"/></td>
	    <td align="center"><s:property value="price"/></td>
	    <td align="center"><s:property value="total"/></td>
	    <td align="center"><s:property value="lotNumber"/></td>
	    <td align="center"><s:date name="effectiveDate" format="yyyy-MM-dd"/></td>
		<td align="center"><s:property value="medicalPermitment"/></td>
	  </tr>
	  </s:iterator>
	  <tr class="table_2">
	  <form id="cargoForm" name="cargoForm"action="documentAction!addCargo.action" method="post">
		    <td  align="center" colspan="2"><div align="center" class="imgbtn" style="color:black;"onclick="javascript:add()"><span class="imgbtn_add"></span>添加</div></td>
		    <input id="docId" name="cargo.doc_id" type="hidden" value="<s:property value="doc.doc_id"/>"/>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.name" dataType="Require"  msg="请输入【通用名称】！"/></td>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.category" dataType="Require"  msg="请输入【 剂   型  】！"/></td>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.format" dataType="Require"  msg="请输入【  规  格  】！"/></td>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.medicPackage" dataType="Require"  msg="请输入【  包   装  】！"/></td>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.number" dataType="Integer"  msg="请输入【出库数量】！"/></td>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.price" dataType="Double"  msg="请输入【  单   价  】！"/></td>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.total" dataType="Double"  msg="请输入【合计金额】！"/></td>
		    <td><input size = "11"  maxlength="50"  class="txt" name="cargo.lotNumber" dataType="Require"  msg="请输入【产品批号】！"/></td>
		    <td><input type="text" name="cargo.effectiveDate" class="Wdate" style="width:100px"   dataType="Require"  msg="请填写【有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" /></td>
			<td><input size = "11"  maxlength="50"  class="txt" name="cargo.medicalPermitment" dataType="Require"  msg="请输入【国药准字】！"/></td>
	  </form>
	  </tr>
</table>
		

	</div>
</body>
</html>
