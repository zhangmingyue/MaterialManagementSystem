<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<script language=JScript.Encode src="<%= request.getContextPath() %>/js/jquery-1.5.1.min.js"></script>
<script language=JScript.Encode src="<%= request.getContextPath() %>/fckeditor/fckeditor.js"></script>
<script language="javascript">
<!--
	$(document).ready(function(){				   
		var oFCKeditor = new FCKeditor( 'content' ) ; 
  		oFCKeditor.BasePath = "<%= request.getContextPath() %>/fckeditor/" ; 
		oFCKeditor.Height="300";
  		oFCKeditor.ReplaceTextarea() ;	
		
	});	
//-->
</script>
<textarea id="content" name="content"></textarea>

</body>
</form>
</html>