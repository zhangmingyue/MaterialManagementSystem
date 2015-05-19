<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>同行单查看</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/images/wordstyle.css" />
<!--  <link href="<%=request.getContextPath()%>/images/style_frame.css" type="text/css" rel="stylesheet" />-->
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
	
	function print(){
		window.location.href="";
		$("#datadiv").printArea();
	}
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.PrintArea.js"></script>
<style type="text/css">
td{height:22px;width:80px;border:1px solid #000000;}
.STYLE1{border:0px solid #000000}
.STYLE2{border-top:4px;
		border-left:0px;
		border-right:0px;
		border-bottom:0px; }
.STYLE3 {color: #000000;margin:2px;
	font-size: 10px;}
.datacontent{
	position:absolute;
	top:85px;
	left:0px;
	width:1018px;
}
</style>
</head>
<body >

<div class="position_div">
	<div class="position_div_text">当前位置： 同行单管理 > 同行单查看</div>
</div>

<div class="title_div">
    <div class="title_text">同行单查看</div>
    <div class="title_other">
	    <table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
	    	<tr>
	    		<td class="STYLE1">修改时间：</td>
	    	 	<td class="STYLE1"><s:date name="doc.submitTime" format="yyyy-MM-dd" /></td>
	    		<td class="STYLE1"><div class="imgbtn" onclick="javascript:print()"><span class="imgbtn_add2"></span>打印</div></td>
		    	<td class="STYLE1"><div class="imgbtn" onclick="javascript:back()"><span class="imgbtn_back2"></span>返回</div></td>
	   		 </tr>
	    </table>
    </div>
</div>
	
<div id="datadiv">
<table bgcolor="#FFFFFF" align="center" width="1003" border="0" cellpadding="0" cellspacing="0">
		<tr ><td class="STYLE2" colspan="10" align="center"><span class="STYLE3">黑龙江省济仁药业有限公司</span></td></tr>
		<tr ><td class="STYLE2" colspan="10" align="center"><span class="STYLE3">出库单（随货同行单）</span></td></tr>
		<tr ><td class="STYLE2" colspan="10" align="right"><span class="STYLE3">R-SMP-08-E.004-00-01-00</span></td></tr>
</table>
<table align="center" width="1003" border="1" cellpadding="1" cellspacing="0" bgcolor="#FFFFFF"  bordercolor="#000000">
  <tr >
    <td width="98" rowspan="2" align="center"><span class="STYLE3">购货方</span></td>
    <td width="62" height="31" align="center"><span class="STYLE3">单&nbsp;&nbsp;位</span></td>
    <td colspan="5" align="center"><span class="STYLE3"><s:property value="doc.pur.name"/></span></td>
    <td width="73" align="center"><span class="STYLE3">出库日期</span></td>
    <td colspan="2" align="center"><span class="STYLE3"><s:date name="doc.time" format="yyyy-MM-dd" /></span></td>
  </tr>
  <tr >
    <td height="31" align="center"><span class="STYLE3">地&nbsp;&nbsp;址</span></td>
    <td colspan="5" align="center"><span class="STYLE3"><s:property value="doc.pur.addr"/></span></td>
    <td align="center"><span class="STYLE3">生产厂家</span></td>
    <td colspan="2" align="center"><span class="STYLE3">黑龙江省济仁药业有限公司</span></td>
  </tr>
  <tr >
    <td width="210" align="center"><span class="STYLE3">通用名称</span></td>
    <td width="70" align="center"><span class="STYLE3">剂&nbsp;&nbsp;型</span></td>
    <td width="70" align="center"><span class="STYLE3">规&nbsp;&nbsp;格</span></td>
    <td width="70" align="center"><span class="STYLE3">包&nbsp;&nbsp;装</span></td>
    <td width="70" align="center"><span class="STYLE3">出库数量（件）</span></td>
    <td width="70" align="center"><span class="STYLE3">单&nbsp;&nbsp;价</span></td>
    <td width="70" align="center"><span class="STYLE3">合计金额</span></td>
    <td width="70" align="center"><span class="STYLE3">产品批号</span></td>
    <td width="70" align="center"><span class="STYLE3">有效期至</span></td>
    <td width="70" align="center"><span class="STYLE3">国药准字</span></td>
  </tr>
  <s:iterator value="doc.cargos" status="status">
  <tr  >
    <td align="center"><span class="STYLE3"><s:property value="name"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="category"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="format"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="medicPackage"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="number"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="price"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="total"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="lotNumber"/></span></td>
    <td align="center"><span class="STYLE3"><s:date name="effectiveDate" format="yyyy-MM"/></span></td>
    <td align="center"><span class="STYLE3"><s:property value="medicalPermitment"/></span></td>
  </tr>
  </s:iterator>
  
  <tr >
    <td align="center"><span class="STYLE3">总&nbsp;&nbsp;计</span></td>
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
  <tr >
    <td align="center"><span class="STYLE3">备&nbsp;&nbsp;注</span></td>
    <td colspan="9" >&nbsp;</td>
  </tr>
</table>
<table align="center"  width="1003"  cellpadding="0" cellspacing="0">
 <tr bgcolor="#FFFFFF">
 
    <td class="STYLE2" align="right"><span class="STYLE3">区&nbsp;&nbsp;域：</span></td>
    <td class="STYLE2"><span class="STYLE3"><s:property value="doc.zone"/></span></td>
    <td class="STYLE2" align="right"><span class="STYLE3">承运人：</span></td>
    <td class="STYLE2"><span class="STYLE3"><s:property value="doc.transporter"/></span></td>
    <td class="STYLE2" align="right"><span class="STYLE3">保管员：</span></td>
    <td class="STYLE2"><span class="STYLE3"><s:property value="doc.manager"/></span></td>
    <td class="STYLE2" align="right"><span class="STYLE3">门&nbsp;&nbsp;卫：</span></td>
    <td class="STYLE2"><span class="STYLE3"><s:property value="doc.keeper"/></span></td>
    <td class="STYLE2" align="right"><span class="STYLE3">制单人：</span></td>
    <td class="STYLE2"><span class="STYLE3"><s:property value="doc.listmaker"/></span></td>
    <td class="STYLE2" align="right"><span class="STYLE3">复核人：</span></td>
    <td class="STYLE2"><span class="STYLE3"><s:property value="doc.checker"/></span></td>
    <td class="STYLE2" align="right"><span class="STYLE3">财务：</span></td>
    <td class="STYLE2"><span class="STYLE3"><s:property value="doc.accouting"/></span></td>
  </tr>
</table>
</div>
</body>
</html>
