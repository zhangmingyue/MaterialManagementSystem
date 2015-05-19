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

<title>库工选择</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/zdy_jquery.funkyUI.js"></script>
<script language="javascript" src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script language="javascript" src='<%= request.getContextPath() %>/dwr/interface/docService.js'></script>
<script language="javascript"> 
<!-- 



	function chose(id){
		
	
 		saveOkTip('正在添加，请稍候....' , 'btn' , 'delBtn');
		window.parent.$.unfunkyUI_zdy(id,''); 
	}
 	
 	function query(){
 		
 		var spa=$("#spa").val();
 		docService.queryGoods(spa,dataoption);
 	}

 	function dataoption(data){
 		var pid='';
 		var pname='';
 		var htm='';
 		if(data!=null){
 			for(var i=1;i<=data.length;i++){
 				pname=data[i-1].name;
 				pknorms=data[i-1].pknorms;
 				unit=data[i-1].unit;
 				pname = pname+'  '+pknorms+unit;
 				pid=data[i-1].id;
 			    if((i-1)%2==0){
 			    	htm+='<li class="li_2"><a href="javascript:chose(\''+pid+'\');"><span>'+pname+'</span></a></li>';
 			    }else{
 			    	htm+='<li class="li_1"><a href="javascript:chose(\''+pid+'\');"><span>'+pname+'</span></a></li>';
 			    }
 				
 			}
 			htm='<ul>'+htm+'</ul>';
 		}
 		$("#res").html(htm);
 	}
	$(document).ready(function(){

		showTip();
	});

	
//-->
</script>
</head>
<body >
<div class="title_div_sq">
   <table height="36" border="0" cellspacing="0" cellpadding="0" align="center">
	<tr>
	    <td>
	   		<input id="spa" align="center" class="txt" type="text" maxlength = "40" type="text" name="zimu" onchange="query()" />
	    </td>
    </tr>
    </table>

</div>
<table id="tab" border="0" cellspacing="0" cellpadding="0"  class="table_style" width="97%">
	<tr class="table_1">
 		 <td width="20%" align="center" ><div id="res"></div></td>
   </tr>
</table>
</div>
</body>
</html>
