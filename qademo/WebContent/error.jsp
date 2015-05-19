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
<title>出错啦！</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/js/menu/menu.css"  />
</head>
<style>
.error_text{align:center;}
</style>
<body>
<div id="content">

<div class="error_text" >
	错误信息:
    <p><s:property value="exception.message"/></p>
</div>
</div>



</body>
</html>