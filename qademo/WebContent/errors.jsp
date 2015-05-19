<%@page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>提示窗口</title>
<link href="<%= request.getContextPath() %>/images/style.css" type="text/css" rel="stylesheet" />
</head>
<body>

<div class="top">
	<ul class="toplink"></ul>
</div>

<div class="hr"></div>

<div class="error_h1">提示信息</div>

<div class="error_text">
<form action="#" name="pageForm" method="post">
    <s:if test="hasFieldErrors()">
       <font color="red"> <s:fielderror/></font>
    </s:if>
    <s:if test="hasActionErrors()">
         <font color="red"><s:actionerror/></font>
    </s:if>
    <br>
    <a href="javascript:history.back()"><img border="0" src="<%= request.getContextPath() %>/images/btn_back.png"></a></td>
</form>
</div>

<div class="hr"></div>





</body>

</html>
