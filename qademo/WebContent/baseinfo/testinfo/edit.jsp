<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "storageinfo!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />

<title>检验单信息编辑</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.funkyUI.js"></script>
<script language="javascript" src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script language="javascript" src='<%= request.getContextPath() %>/dwr/interface/instoreService.js'></script>
<script language="javascript"> 
<!-- 


	function save(){
		if(verify()){
			var actype=$('#actype').val();

			if(actype=="0"){
				
				document.listForm.action ="druginstoreaction!saveTest.action";
			}else if(actype=="1"){
				
				document.listForm.action ="instoreaction!saveTest.action";
				
			}else if(actype=="2"){
				
				document.listForm.action ="packinstoreaction!saveTest.action";
			}else if(actype=="3"){
				
				document.listForm.action ="packinstoreaction!saveTest.action";
				
			}else if(actype=="4"){
		
				document.listForm.action ="prodnstoreaction!saveTest.action";
				
			}
			
			document.listForm.submit();
			saveOkTip('正在添加库工，请稍候....' , 'btn' , 'delBtn');
			window.parent.$.unfunkyUI();
		}
	}
 
function verify(){
	if(!Validator.Validate(document.listForm,2)) return false;
	return true;
}

function setdj(data){

	if(data=="0"){
		$('#bhgtr').show();
		$('#bhg').attr("dataType","Require");
		$('#bhg').attr("msg","请填写【不合格项】!");
		$('#clqktr').show();
		$('#clqk').attr("dataType","Require");
		$('#clqk').attr("msg","请填写【处理情况】!");
	}else{
		$('#bhgtr').hide();
		$('#bhg').removeAttr("dataType","Require");
		$('#bhg').removeAttr("msg","请填写【不合格项】!");
		$('#clqktr').hide();
		$('#clqk').removeAttr("dataType","Require");
		$('#clqk').removeAttr("msg","请填写【处理情况】!");
	}
}


	$(document).ready(function(){
		//提示信息
	 	var res='<s:property value="test.state"/>';
	 	 setdj(res);
	 	 var id=$('#gid').val();
		 instoreService.queryCodeByGid(id,function(code){
			 if("2"==code){
					$('#sjrqtr').hide();
					$('#sjrq').removeAttr("dataType","Require");
					$('#sjrq').removeAttr("msg","请填写【取样日期】!");
					$('#jyrqtr').hide();
					$('#jyrq').removeAttr("dataType","Require");
					$('#jyrq').removeAttr("msg","请填写【报告日期】!");
					$('#qyltr').hide();
					$('#qyl').removeAttr("dataType","Require");
					$('#qyl').removeAttr("msg","请填写【取样量】!");
			 }
			 
		 })
		showTip();
	});
	function closes(){
		window.parent.$.unfunkyUI_zdy();
	}
	
//-->
</script>
</head>
<body >


<div class="title_div_sq">
    <div class="title_text" style="color:white;">检验单信息编辑</div>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
	<tr>
    <td><div onclick="javascript:save();" class="imgbtn"><span class="imgbtn_add"></span>保存</div></td>
    <td><div onclick="javascript:closes();" class="imgbtn"><span class="imgbtn_delete"></span>关闭</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="97%">
	<form name="listForm" action="" method="post">
		 <input type="hidden" name="test.id" value="<s:property value="test.id"/>" />
		  <input type="hidden" id="actype" name="actiontype" value="<s:property value="actiontype"/>" />
		 	<s:if test="#request.test.id!=null">
		 	  	<input id="gid" type="hidden" name="test.goods.id" value="<s:property value="test.goods.id"/>" />
		 	</s:if>
			<s:else>
				<input id="gid" type="hidden" name="test.goods.id" value="<s:property value="gid"/>" />
			</s:else>
	   	 <tr class="table_1">
	 		 <td width="20%" align="center" >检验单编号：<span class="highlight">*</span></td>
	  		<td  ><input  class="txt" type="text" maxlength = "24" type="text" name="test.num" value="<s:property value="test.num"/>" dataType="Require" msg="请填写【检验单编号】!" size="28"/></td>
	     </tr>	 
	     <tr class="table_2" id="sjrqtr">
	    	<td  width="20%" align="center" >取样日期：<span class="highlight">*</span></td>
	  		<td>
	    		<input type="text" id="sjrq" value='<s:date name="test.sendate" format="yyyy-MM-dd" />' name="test.sendate" class="Wdate" style="width:180px"   dataType="Require"  msg="请填写【取样日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
	    	</td>
	     </tr>
	     <tr class="table_1" id="jyrqtr">
	 		 <td width="20%" align="center" >报告日期：<span class="highlight">*</span></td>
	    	<td>
	    		<input type="text" id="jyrq"  value='<s:date name="test.testdate" format="yyyy-MM-dd" />' name="test.testdate" class="Wdate" style="width:180px"   dataType="Require"  msg="请填写【报告日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
	    	</td>
	      </tr>	
	    <tr class="table_2">
	    	<td  width="20%" align="center" >检验结果：<span class="highlight">*</span></td>
	    	<td>
	    			
	    		 <s:if test="#request.test.id!=null">
					
					<!-- <input type="radio" onclick="setdj('1')"  name="test.state" class="radio"  value="1" />合格
	    			<input type="radio" onclick="setdj('0')"  name="test.state" class="radio"  value="0" />不合格 -->
	    	<input type="radio" onclick="setdj('1')" name="test.state" class="radio"  value="1"  <s:if test="test.state==\"1\"">checked="checked"</s:if>  />合格
	    			<input type="radio" onclick="setdj('0')"  name="test.state" class="radio"  value="0"  <s:if test="test.state==\"0\"">checked="checked"</s:if>  />不合格 
	    		</s:if>
	    		<s:else>
	    		<%-- 	<s:if test="test.state==\"1\"">合格</s:if>
	    			<s:if test="test.state==\"0\"">不合格</s:if> --%>
	    			<input type="radio" onclick="setdj('1')"  name="test.state" class="radio"  value="1" checked="checked"/>合格
	    			<input type="radio" onclick="setdj('0')"  name="test.state" class="radio"  value="0" />不合格
    			</s:else>
	    	</td>
	    </tr>
	    
	  	<tr class="table_1" id="qyltr">
	    	<td  width="20%" align="center" >取样量：</td>
	    	<td  ><input  class="txt" id="qyl" type="text" size="28"  maxlength = "4" name="test.testcount" value="<s:property value="test.testcount"/>" /></td>
	    </tr>
	    <tr class="table_2" id="bhgtr">
	    	<td  width="20%" align="center" >不合格项：<span class="highlight">*</span></td>
	    	<td  ><input  class="txt" type="text" size="40" id="bhg" name="test.dequalified" value="<s:property value="test.dequalified"/>"  maxlength = "80" dataType="Require" msg="请填写【不合格项】!"/></td>
	    </tr>
	 
	     <tr class="table_1" id="clqktr">
	    	<td  width="20%" align="center" >处理情况：<span class="highlight">*</span></td>
	    	<td  >
	    	<s:if test="retest.status!=\"0\"">
	    			<input type="radio"  name="test.resultinfo"  class="radio"  value="1"  <s:if test="retest.resultinfo==\"1\"">checked="checked"</s:if>  />退货
	    			<input type="radio"  name="retest.resultinfo"  class="radio"  value="0"  <s:if test="retest.resultinfo==\"0\"">checked="checked"</s:if>  />销毁
	    		</s:if>
	    		<s:else>
	    			<input type="radio"  name="test.resultinfo"  class="radio"  value="1" checked="checked"/>退货
	    			<input type="radio"  name="test.resultinfo"  class="radio"  value="0" />销毁
    			</s:else>
	    	</td>
	    </tr>
	    <tr class="table_2" >
			<td width="20%"  align="center">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：&nbsp;</td>
		    <td colspan="3"  width="80%"><textarea  rows="3"  style="width:99%;"  name="test.remark"   dataType="LimitB" require="false" min="1" max="100" msg="【备注】最多输入100个汉字!"><s:property value="test.remark" /></textarea></td>
		</tr>
	</form>
</table>

</body>
</html>
