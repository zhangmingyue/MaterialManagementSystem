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

<title>检验单查看</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.funkyUI.js"></script>
<script language="javascript"> 
<!-- 



	$(document).ready(function(){
		//提示信息
	<s:iterator value="curworklist" id="cwl">
	var cid='<s:property value="%{cwl}"/>';

 	$("[name='wids']").each(function(){	
		if($(this).val()==cid){
	    	$(this).attr("checked",'true');
 	   	}
	 })
	 </s:iterator>
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
    <div class="title_text" style="color:white;">检验单查看</div>
	<div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
	<tr>
    <td><div onclick="javascript:closes();" class="imgbtn"><span class="imgbtn_delete"></span>关闭</div></td>
    </tr>
    </table>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="97%">
	<form name="listForm" action="" method="post">

	   	 <tr class="table_1">
	 		 <td width="20%" align="center" >检验单编号：</td>
	  		<td  ><s:property value="test.num"/></td>
	     </tr>	 
	     <tr class="table_2">
	    	<td  width="20%" align="center" >取样日期：</td>
	  		<td>
	    		<s:date name="test.sendate" format="yyyy-MM-dd" />
	    	</td>
	     </tr>
	     <tr class="table_1">
	 		 <td width="20%" align="center" >报告日期：</td>
	    	<td>
	    		<s:date name="test.testdate" format="yyyy-MM-dd" />
	    	</td>
	        </tr>	
	    <tr class="table_2">
	    	<td  width="20%" align="center" >检验结果：</td>
	    	<td>
	    		<s:if test="test.state==\"0\"">
	    			<div style="color:red;">不合格</div>
	    		</s:if>
	    		<s:else>ss
	    				<div>合格</div>
    			</s:else>
	    	</td>
	    </tr>
	    <tr class="table_1">
	    	<td  width="20%" align="center" >检验周期：</td>
	    	<td  >
	    	<s:property value="test.testcycle"/>
	    	</td>
	    </tr>
	   
	</form>
</table>

</body>
</html>
