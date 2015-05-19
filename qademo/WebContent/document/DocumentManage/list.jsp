<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page pageEncoding="UTF-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "documentAction!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/util.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/interface/mpCategoryService.js'></script>
<title>乳品企业信息</title>
<script language="javascript"> 
<!--


	//document/DocumentManage/
	function add(){
		window.location.href = "documentAction!addDoc.action";
	}
	
	function verify(){
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}
	function query() {
		var queryForm = document.getElementById('queryForm');
		queryForm.submit();
	}
	function queryById(id,method){
		window.location.href = "documentAction!queryById.action?doc.doc_id="+id+"&method="+method;
	}
	function remov(){   
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		if(confirm("您确定要删除选中的记录吗？")==true){
			document.listForm.action ="documentAction!deleteDocument.action"; 
			document.listForm.target="_self";
			document.listForm.submit();
			saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');
		}
	}	
	$(document).ready(function(){
		//提示信息
		showTip();
	});

//-->
</script>
</head>
<body>
<div class="position_div">
	<div class="position_div_text">当前位置： 同行单管理 > 同行单维护</div>
</div>
<div class="title_div">
    <div class="title_text" style="width:10%;">同行单维护</div>
    <div class="title_other"  style="width:85%;">
    	<table height="36" border="0" cellspacing="0" cellpadding="0" align="right" width="100%">
    	
    	<tr>
    	 <form id = "queryForm" name="queryForm" action="/qademo/document/documentAction!pagedQuery.action" method="post">
   			<td>出库日期：
	        	 <input type="text" value='<s:date name="condition.startdate" format="yyyy-MM-dd" />' name="condition.startdate" class="Wdate" style="width:85px"   dataType="Require"  msg="请填写【出库日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
	    		到 <input type="text" value='<s:date name="condition.enddate" format="yyyy-MM-dd" />' name="condition.enddate" class="Wdate" style="width:85px"   dataType="Require"  msg="请填写【出库日期】!"  onFocus="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true,isShowClear:true,readOnly:true})" />
	    	</td>

		    <td align="left">
			    购货单位：
			    <input size = "30" type="text" name ="condition.company"/>
		    </td>
		    <td align="left">
			    状态：
			    <select name="condition.status">
			    	<option value=""></option> 
			    	<option value="0">保存</option>
			    	<option value="1">提交</option>
			    </select>
		     </td>
		    </form>
			<td align="left"><div onclick="javascript:query();" class="imgbtn"><span class="imgbtn_search"></span>查询</div></td>
			<td ><div align="center" class="imgbtn" onclick="javascript:add()"><span class="imgbtn_add"></span>添加</div></td>		    
		    <td><div id="delBtn" class="imgbtn" onclick="javascript:remov()"><span class="imgbtn_delete"></span>删除</div></td>
    </tr>
    </table></div>
</div>

<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form name="listForm" action="" method="post">
    <tr class="table_th"> 
    <td align="center" width="6%"><input type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" class="checkbox"></td>
	<td align="center" width="6%">序号</td>
	<td align="center" width="10%">操作</td>		
	<td align="center" width="10%">出库日期</td>
	<td align="center"width="20%">购货单位</td>
	<td align="center"width="6%">区域</td>
	<td align="center"width="6%">保管员</td>
	<td align="center"width="6%">承运人</td>
	<td align="center"width="6%">门卫</td>
	<td align="center" width="6%">制单人</td>
	<td align="center"width="6%">复核人</td>
	<td align="center"width="6%">财务</td>
	<td align="center"width="6%">状态</td>
</tr>

<s:iterator value="currentPage.data" status="status">
<s:if test="#status.odd == true">
		<tr class="table_1">
		</s:if>
		<s:else>
		<tr class="table_2">
		</s:else>			
			<td align="center" width="6%"><input class="checkbox" name="ids" type="checkbox" value="<s:property value="doc_id"/>"/></td>
			<td align="center" width="6%"><s:property value="currentPage.start + #status.count" /></td>
			<s:if test="status== 0">
				<td align="center" width="10%"><div class="imgbtn2" onclick="javascript:queryById('<s:property value="doc_id"/>','0')" ><span class="imgbtn_edit"></span>编辑</div></td>
			</s:if>
			<s:else>
				<td align="left"><div style="color:black;" onclick="javascript:queryById('<s:property value="doc_id"/>','1');" class="imgbtn"><span class="imgbtn_search"></span>查看</div></td>
			</s:else>
			
			<td align="center" width="10%"><s:date name="time" format="yyyy-MM-dd"/></td>
			<td align="center" width="20%"><s:property value="pur.name"/></td>
			<td align="center" width="6%"><s:property value="zone"/></td>
			<td align="center" width="6%"><s:property value="maganer"/></td>
			<td align="center" width="6%"><s:property value="transporter"/></td>
			<td align="center" width="6%"><s:property value="keeper"/></td>
			<td align="center" width="6%"><s:property value="listmaker"/></td>
			<td align="center" width="6%"><s:property value="checker"/></td>
			<td align="center" width="6%"><s:property value="accouting"/></td>
			<td align="center" width="6%">
			<s:if test="status== 0">
				保存
			</s:if>
			<s:if test="status== 1">
				提交
			</s:if>
			<s:if test="status== 2">
				删除
			</s:if>

			</td>
		</tr>
</s:iterator>

</form>
<tr><td colspan="13" align="right"><%@ include file="/inc/pagetable.inc"%></td></tr>

</table>

</body>
</html>
