<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=utf-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "purchinfo!pagedQuery.action";
String target="";
%>
<head>
<link href="images/style_frame.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/util.js'></script>
<script type="text/javascript" src="js/templets.js"></script>
<script type='text/javascript' src='<%= request.getContextPath() %>/dwr/interface/storageinfoService.js'></script>
<title>购货方信息</title>
<script language="javascript"> 
<!-- 

	function queryById(id){
		window.location.href = "purchinfo!queryById.action?id="+id;
	}

	function add(){
		window.location.href = "purchinfo!addQuery.action";
	}

	function query(){
		document.queryForm.submit();
	}
	function remov(){
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		document.listForm.action ="purchinfo!remove.action";
		document.listForm.submit();
		saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');
	}	
	function search_open1(obj , divid){
		alert("in it");
		if (!obj.attr('opened')){
			obj.attr('opened' , 'close');
		}
		obj.bind("click", function(){
			if (obj.attr('opened') == 'close'){
				alert("in ");
				divid.fadeIn();
				obj.find('span').removeClass('imgbtn_search_open').addClass('imgbtn_search_close')
				obj.attr('opened' , 'open')
			}else{
				alert("out");
				divid.slideUp();
				obj.find('span').removeClass('imgbtn_search_close').addClass('imgbtn_search_open');
				obj.attr('opened' , 'close')
			}
		});
	} 
	function openAndHidden(btnid,divid) {
		alert(btnid+"  "+divid);
		
		search_open1($('#'+btnid),$('#'+divid));
	}
	$(document).ready(function(){
		//提示信息
	//		search_open($('#search_btn') , $('#search_div'));
	//search_open($('#search_btn_sq') , $('#search_div_sq'));
		showTip();
	});
//-->
</script>
</head>
<body>
<div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 基本信息管理 > 购货方信息</div>
</div>
<div class="title_div">
    <div class="title_text">购货方信息</div>
	<div class="title_other">
	<form name="queryForm" action="purchinfo!pagedQuery.action" method="post">
		<table height="36" border="0" cellspacing="0" cellpadding="0" align="right">
		<tr>
		 	<td>企业名称：<input  class="txt" type="text" maxlength = "20" type="text" name="condition.sname" value="<s:property value="condition.sname"/>"/></td>
	     	<td>联系人：<input  class="txt" type="text" maxlength = "20" type="text" name="condition.linkm" value="<s:property value="condition.linkm"/>"/></td>
	    	<td><div onclick="javascript:query();" class="imgbtn"><span class="imgbtn_search"></span>查询</div></td>
	    	<td><div onclick="javascript:add();" class="imgbtn"><span class="imgbtn_add"></span>添加</div></td>
	    	<td><div onclick="javascript:remov();" class="imgbtn"><span class="imgbtn_delete"></span>删除</div></td>
	    </tr>
	    </table>
    </form>
    </div>
</div>
<table border="0" cellspacing="0" cellpadding="0"  class="table_style" width="1003">
<form name="listForm" action="" method="post">
    <tr class="table_th">
	<td width="3%" align="center">序号</td>
	<td width="4%" align="center">操作</td>
	<td width="3%" align="center"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>	
	<td width="10%" align="center">企业编码</td>
	<td width="20%" align="center">企业名称</td>
	<td width="15%" align="center">地址</td>
	<td width="10%" align="center">联系方式</td>
	<td width="10%" align="center">联系人</td>
	<td width="15%" align="center">待整改项</td>
	<td width="10%" align="center">修改日期</td>
	
	
	</tr>
	<s:iterator value="currentPage.data" status="status">
		<s:if test="#status.odd == true">
			<tr class="table_1">
		</s:if>
		<s:else> 
			<tr class="table_2">
		</s:else>
		<td align="center"><s:property value="currentPage.start + #status.count"/></td> 
		<td align="center"><div onclick="javascript:queryById('<s:property value="id"/>');"><img class="img" src="<%= request.getContextPath() %>/images/bimgs/modify.gif" title="修改"></div></td>
		<td align="center"><input class="checkbox" name="ids" type="checkbox" value="<s:property value="id"/>"/></td>
		<td align="center"><s:property value="provinceNumber"/>-<s:property value="purNum"/></td>
   		<td align="center"><span style="color:<s:property value="color"/>"><s:property value="name"/></span></td>
   		<td align="center"><s:property value="addr"/></td>
   		<td align="center"><s:property value="link"/></td>
   		<td align="center"><s:property value="linkman"/></td>
   		<td align="center">
   			<s:if test="problemSize == 0">
				无
			</s:if>
			<s:else>

	   			<select width="100px">
		   			<s:iterator value="problems" var="obj">
		   				<option><s:property value="#obj" /></option>
		   			</s:iterator>
	   			</select>
   			</s:else>
		</td>
		<td align="center"><s:date name="updateTime" format="yyyy-MM-dd" /></td>


   		</tr>
   		
   		
		
	</s:iterator>
</form>

<tr><td align="right" colspan="7"><%@ include file="/inc/pagetable.inc"%></td></tr>
</table>
</div>
</body>
</html>
