<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>同行单查看</title>
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
		showTip();
	});

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
	<div class="position_div_text">当前位置： 同行单管理 > 同行单查看</div>
</div>

<div class="title_div">
    <div class="title_text">同行单查看</div>
    <div class="title_other">
	    <table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
	    	<tr>
		    	<td class="STYLE1"><div class="imgbtn" onclick="javascript:back()"><span class="imgbtn_back2"></span>返回</div></td>
	   		 </tr>
	    </table>
    </div>
</div>
	
<table align="center"  width="1003" border="1" cellpadding="1" cellspacing="1">
<form  id="editForm" name="editForm" action="documentAction!saveDocument.action" method="post">
	  <tr class="table_2">
	    <td align="center">购货单位</td>
	    <td colspan="4"><s:property value="doc.pur.name"/></td>
	    <td align="center">地&nbsp;&nbsp;址</td>
	    <td colspan="5"><s:property value="doc.pur.addr"/></td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">出库日期</td>
	    <td colspan="4"><s:date name="doc.time" format="yyyy-MM-dd" /></td>
	    <td align="center">承运人</td>
	    <td colspan="5"><s:property value="doc.transporter"/></td>
	  </tr>
	  <tr class="table_2">
	    <td align="center">区&nbsp;&nbsp;域</td>
	    <td colspan="4"><s:property value="doc.zone"/></td>
	    <td align="center">保管员</td>
	    <td colspan="5"><s:property value="doc.manager"/></td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">门&nbsp;&nbsp;卫</td>
	    <td colspan="4"><s:property value="doc.keeper"/></td>
	    <td align="center">制单人</td>
	    <td colspan="5"><s:property value="doc.listmaker"/></td>
	  </tr>
	  <tr class="table_2">
	    <td  align="center" height="34">复核人</td>
	    <td colspan="4"><s:property value="doc.checker"/></td>
	    <td align="center">财&nbsp;&nbsp;务</td>
	    <td colspan="5"><s:property value="doc.accouting"/></td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">备&nbsp;&nbsp;注</td>
	    <td colspan="11"><s:property value="doc.remark"/></td>
	  </tr>
	  </form>
	</table>
	
	
	<table id="cargoTable"  align="center"  width="1003" border="1" cellpadding="1" cellspacing="1">
	  <tr class="table_2">
	    <td colspan="12">产品信息</td>
	  </tr>
	  <tr class="table_1">
	    <td align="center">序&nbsp;&nbsp;号</td>
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
	  <tr class="table_2">
	  
	  </tr>
	  <s:iterator value="doc.cargos" status="status">
	  <s:if test="#status.odd == true">
		<tr class="table_2">
		</s:if>
		<s:else>
		<tr class="table_1">
		</s:else>	
	   <td align="center"><s:property value="#status.count" /></td>
	
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

</table>
		
<table align="center" width="1003" border="1" cellpadding="1" cellspacing="1">
  <tr class="table_1">
    <td width="98" rowspan="2" align="center">购货方</td>
    <td width="62" height="31" align="center">单&nbsp;&nbsp;位</td>
    <td colspan="5"><s:property value="doc.pur.name"/></td>
    <td width="73" align="center">出库日期</td>
    <td colspan="2"><s:date name="doc.time" format="yyyy-MM-dd" /></td>
  </tr>
  <tr class="table_1">
    <td height="31" align="center">地&nbsp;&nbsp;址</td>
    <td colspan="5"><s:property value="doc.pur.addr"/></td>
    <td align="center">生产厂家</td>
    <td colspan="2">黑龙江省济仁药业有限公司</td>
  </tr>
  <tr class="table_1">
    <td align="center">通用名称</td>
    <td align="center">剂&nbsp;&nbsp;型</td>
    <td width="50" align="center">规&nbsp;&nbsp;格</td>
    <td width="70" align="center">包&nbsp;&nbsp;装</td>
    <td width="70" align="center">出库数量（件）</td>
    <td width="70" align="center">单&nbsp;&nbsp;价</td>
    <td width="70" align="center">合计金额</td>
    <td align="center">产品批号</td>
    <td width="69" align="center">有效期至</td>
    <td width="74" align="center">国药准字</td>
  </tr>
  <s:iterator value="doc.cargos" status="status">
  <tr  class="table_1">
    <td><s:property value="name"/></td>
    <td><s:property value="category"/></td>
    <td><s:property value="format"/></td>
    <td><s:property value="medicPackage"/></td>
    <td><s:property value="number"/></td>
    <td><s:property value="price"/></td>
    <td><s:property value="total"/></td>
    <td><s:property value="lotNumber"/></td>
    <td><s:date name="effectiveDate" format="yyyy-MM-dd"/></td>
    <td><s:property value="medicalPermitment"/></td>
  </tr>
  </s:iterator>
  <tr class="table_1">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="table_1">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="table_1">
    <td align="center">总&nbsp;&nbsp;计</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="table_1">
    <td align="center">备&nbsp;&nbsp;注</td>
    <td colspan="9" >&nbsp;</td>
  </tr>
</table>
	</div>
</body>
</html>
