<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>同行单编辑</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/zdy_jquery.funkyUI.js"></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/util.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/interface/docService.js'></script>


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
	function remov(id,doc_id) {
		if(confirm('确定删除该货物吗？')){
			window.location.href = "documentAction!deleteCargo.action?cargo.id="+id+"&&doc.doc_id="+doc_id;
			//"?cargo.id="+id+"&&doc.doc_id="+doc_id;
		}
	}
	
	function showchoose(){
		$.funkyUI({
			url:'documentAction!chosePurchase.action',
			css:{width:"200",height:"400",top:"0"}
		});
	}
	function showchoose2(){
		$.funkyUI({
			url:'documentAction!choseGoods.action',
			css:{width:"200",height:"400",top:"0"}
		});
	}
	
	function callbak(id,gname){
		docService.queryGood(id,dataoption);
		
	}
	function dataoption(good){
		$('#gid').val(good.id);
		$('#gname').val(good.name);//名称

		$('#gagetype').val(good.agetype);//jixin×
		var format = good.pronorms + 'x' + good.pknorms + good.unit;
		$('#gpronorms').val(format);//guige
		var medicPackage = good.norms + good.pkunit+'/件';
		var pkunit = good.pkunit+'/件';
		$('#norms').val(good.norms);
		$('#pkunit').val(pkunit);
		$('#gnorms').val(medicPackage);//baozhuang
		$('#gmedicalPermitment').val(good.medicalPermitment);//国药准字
		var pid = $('#pid').val();
		var gid = $('#gid').val();
		docService.queryPrice(pid,gid,setPrice);
 	}
	function setPrice(price){
		if(price!=null)
		$('#gprice').val(price.price);
	}
	function callbakthree(id,name,addr){
		$('#pid').val(id);
		$('#pname').val(name);
		$('#paddr').val(addr);
	}
	function calculate(){
		
		var gprice = $('#gprice').val();
		var gnumber1 = $('#gnumber1').val();
		var gnumber2 = $('#gnumber2').val();
		var gnumber;
		if((gnumber1=='件'||gnumber1=='')&&(gnumber2=='盒'||gnumber2=='')){
			message="请填写件数或盒数！";
			alert(message);
			asd = $('#gnumber').val();
			alert(asd);
			asd = $('#gnumber').val('');
			alert(asd);
		}else{
			if(gnumber2=='盒'||gnumber2=='') {
				gnumber = gnumber1;
				var norms = $('#norms').val();
				sum = gnumber1 * gprice * norms;
				$('#gtotal').val(sum);
				$('#gnumber').val(gnumber);
			}else{
				if(gnumber1=='件'||gnumber1==''){
					gnumber = gnumber2+'盒';
					var norms = $('#norms').val();
					sum = gnumber2 * gprice;
					$('#gtotal').val(sum);
					$('#gnumber').val(gnumber);
				}else{
					gnumber = gnumber1+'件'+gnumber2+'盒';
					var norms = $('#norms').val();
					sum = gnumber2 * gprice;
					sum2 = gnumber1 * gprice * norms;
					sum +=sum2;
					$('#gtotal').val(sum);
					$('#gnumber').val(gnumber);
				}
			}
		}
		
	}
	function setGnorms() {
		var norms = $('#norms').val();
		var pkunit = $('#pkunit').val();
		$('#gnorms').val(norms+pkunit);
	}
	function gnumber1Onclick(){
		var gnumber1 = $('#gnumber1').val();
		if(gnumber1=='件') {
			$('#gnumber1').val('');
		}
	}
	function gnumber2Onclick(){
		var gnumber2 = $('#gnumber2').val();
		if(gnumber2=='盒') {
			$('#gnumber2').val('');
		}
	}
</script>
<style type="text/css">
td{height:22px;width:80px;border:1px solid #CCC;}
.STYLE1{border:0px solid #FFF}
</style>
</head>
<body >
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
		<input id="pid" name="doc.pur.id" type="hidden" value="<s:property value="doc.pur.id"/>"/>
		<input id="docId" name="doc.doc_id" type="hidden" value="<s:property value="doc.doc_id"/>"/>
	  <tr class="table_2">
	    <td align="center">购货单位<span class="highlight">*</span></td>
	    <td colspan="5"><input size = "50" id="pname"  maxlength="50"  class="txt" name="company" value="<s:property value="doc.pur.name"/>" onclick="showchoose();"dataType="Require"  msg="请输入【购货单位】！"/></td>
	    <td align="center">地&nbsp;&nbsp;址<span class="highlight">*</span></td>
	    <td colspan="5"><input size = "50"  maxlength="50" id="paddr"  class="txt" name="doc.address" value="<s:property value="doc.address"/>"  dataType="Require"  msg="请输入【  地        址  】！"/></td>
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
	    <td align="center">制单人</td>
	    <td colspan="5">
	   		${doc.doc_id==null?user.userName:doc.listmaker}
			 <input size = "50" type="hidden" maxlength="50"  class="txt" name="doc.listmaker" value="${doc.doc_id==null?user.userName:doc.listmaker}"/>		    
		</td>
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
	    <td align="center">
	    <div id="delBtn" class="imgbtn" style="color:black;" onclick="javascript:remov('<s:property value="id"/>','<s:property value="doc.doc_id"/>')">
	    <span class="imgbtn_delete"></span>删除
	    </div>
	    </td>
	    <td align="center"><s:property value="name"/></td>
	    <td align="center"><s:property value="category"/></td>
	    <td align="center"><s:property value="format"/></td>
	    <td align="center"><s:property value="medicPackage"/></td>
	    <td align="center"><s:property value="number"/></td>
	    <td align="center"><s:property value="price"/></td>
	    <td align="center"><s:property value="total"/></td>
	    <td align="center"><s:property value="lotNumber"/></td>
	    <td align="center"><s:date name="effectiveDate" format="yyyy-MM"/></td>
		<td align="center"><s:property value="medicalPermitment"/></td>
	  </tr>
	  </s:iterator>
	  <tr class="table_2">
	  <form id="cargoForm" name="cargoForm"action="documentAction!addCargo.action" method="post">
		    <td  align="center" colspan="2"><div align="center" class="imgbtn" style="color:black;"onclick="javascript:add()"><span class="imgbtn_add"></span>添加</div></td>
		    <input name="doc.pur.id" type="hidden" value="<s:property value="doc.pur.id"/>"/>
		    <input id="gid" name="goodbase.id" type="hidden" value="<s:property value="goodbase.id"/>"/>
		    <input name="cargo.doc_id" type="hidden" value="<s:property value="doc.doc_id"/>"/>
		    <td><input id="gname" onclick="showchoose2()" size = "11"  maxlength="50"  class="txt" name="cargo.name" dataType="Require"  msg="请输入【通用名称】！"/></td>
		    <td><input id="gagetype"size = "11"  maxlength="50"  class="txt" name="cargo.category" dataType="Require"  msg="请输入【 剂   型  】！"/></td>
		    <td><input id="gpronorms"size = "11"  maxlength="50"  class="txt" name="cargo.format" dataType="Require"  msg="请输入【  规  格  】！"/></td>
		    <td >
		    	<input id="gnorms" size = "11"  maxlength="50"  class="txt" name="cargo.medicPackage" dataType="Require"  msg="请输入【  包   装  】！"/>
		    </td>
		    <td>
		    	<table>
		    		<tr>
		    			<td><input id="gnumber1" size = "3"  maxlength="50" onclick="gnumber1Onclick()" value="件"class="txt"  /></td>
		    			<td><input id="gnumber2" size = "3"  maxlength="50" onclick="gnumber2Onclick()" value="盒" class="txt"  /></td>
		    		</tr>
		    	</table>
		    	<input id="gnumber" type = "hidden" size = "11"  maxlength="50"  class="txt" name="cargo.number" "/>
		   </td>
		    <td><input id="gprice"size = "11"  maxlength="50"  class="txt" name="cargo.price" dataType="Double"  msg="请输入【  单   价  】！"/></td>
		    <td><input id="gtotal" onclick="calculate()" size = "11"  maxlength="50"  class="txt" name="cargo.total" dataType="Double"  msg="请输入【合计金额】！"/></td>
		    <td><input size="11"  maxlength="50"  class="txt" name="cargo.lotNumber" dataType="Require"  msg="请输入【产品批号】！"/></td>
		    <td><input type="text" name="cargo.effectiveDate" class="Wdate" style="width:100px"   dataType="Require"  msg="请填写【有效日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" /></td>
			<td><input id="gmedicalPermitment" size = "11"  maxlength="50"  class="txt" name="cargo.medicalPermitment" dataType="Require"  msg="请输入【国药准字】！"/></td>
			<input id = "norms" type="hidden" />
	  </form>
	  </tr>
</table>
</body>
</html>
