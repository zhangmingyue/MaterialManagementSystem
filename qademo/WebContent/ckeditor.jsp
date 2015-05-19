<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<script language=JScript.Encode src="<%= request.getContextPath() %>/js/jquery-1.4.2.js"></script> 
<script language=JScript.Encode src="<%= request.getContextPath() %>/ckeditor/ckeditor.js"></script>  
<script language=JScript.Encode src="<%= request.getContextPath() %>/ckfinder/ckfinder.js"></script> 
<%@page import="com.ckeditor.CKEditorConfig"%>   
<%   
    String path = request.getContextPath();   
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()   
            + path + "/";   
%>  
<script language="javascript">
<!--
	$(document).ready(function(){				   
	    var editor = CKEDITOR.replace("content");
  
	    CKFinder.setupCKEditor( editor, '<%= request.getContextPath() %>/ckfinder/' ) ;	
		
	});	
//-->
</script>
<textarea id="content" name="content"></textarea>
</body>
</form>
</html>