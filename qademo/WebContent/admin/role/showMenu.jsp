<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page pageEncoding="UTF-8"%>
<%@ include file="/inc/main.inc"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>角色维护</title>
<link href="<%= request.getContextPath() %>/images/style_frame.css" type="text/css" rel="stylesheet" />
<link href="<%= request.getContextPath() %>/images/dtree.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.funkyUI.js"></script>
<script language="javascript">
function subPrivilege(){
	document.privilegeForm.submit();
	alert("授权成功！");
}
function selectall_01(obj){
	var  le = document.privilegeForm.length;
	var id = obj.id;
	for(i=0;i<le;i++)
	{
		if(document.privilegeForm.elements[i].type=="checkbox" && document.privilegeForm.elements[i].id!=id){
			document.privilegeForm.elements[i].checked=obj.checked;			
		}
		
	}
}
function selectbox(obj){
	var name=obj.id;
	var len = name.length;
	var id;
	for(i=0;i<document.privilegeForm.length;i++)
	{
		id = document.privilegeForm.elements[i].id
		id = id.substring(0,len);
		if(document.privilegeForm.elements[i].type=="checkbox" && name==id){
			document.privilegeForm.elements[i].checked=obj.checked;			
		}
	}
	selectpriGranted(obj);
}
function selectpriGranted(obj){
	var sfxz = "false";//同一级是否有被选中的
	var name=obj.id;
	var num = name.length;
	len = Number(num)-2;
	if(obj.checked==true){//当选中子节点的时候上层节点也被选中
		for(j=len; j>1; j=j-2){
			var vid = name.substring(0,j);
			for(i=0;i<document.privilegeForm.length;i++){
					if(document.privilegeForm.elements[i].type=="checkbox" && document.privilegeForm.elements[i].id==vid){
						document.privilegeForm.elements[i].checked=true;			
					}
				}
		}
	}else{//当取消选报子节点时，如果同级节点还有被选中的话上层节点不变，否则也被取消
		for(i=0;i<document.privilegeForm.length;i++){ //校验同级节点是否还有被选中的
					if(document.privilegeForm.elements[i].type=="checkbox" && document.privilegeForm.elements[i].id.length==num){
						var vid = name.substring(0,len);
						var elementsid = document.privilegeForm.elements[i].id;
						elementsid = elementsid.substring(0,len);
						if(document.privilegeForm.elements[i].checked==true && vid==elementsid){
							sfxz="true";
						}
					}
				}
		if(sfxz=="false"){
			for(j=len; j>1; j=j-2){
				var num1 = j+2
				var vid = name.substring(0,j);
				var sfxy = "false";//判断当前节点下属节点的是否还有被选中的
				for(i=0;i<document.privilegeForm.length;i++){
					strid = document.privilegeForm.elements[i].id
					strid = strid.substring(0,j);
					if(document.privilegeForm.elements[i].type=="checkbox" && vid==strid && document.privilegeForm.elements[i].id.length==num1){
						if(document.privilegeForm.elements[i].checked==true){
							sfxy="true";
						}		
					}
				}
				if(sfxy=="false"){//如果同级节点没有被选中的话，上级节点取消选中
					for(i=0;i<document.privilegeForm.length;i++){
						if(document.privilegeForm.elements[i].type=="checkbox" && document.privilegeForm.elements[i].id==vid){
							document.privilegeForm.elements[i].checked=false;			
						}
					}
				}
			}
		}
	}
}
</script>
</head>
<body>
<div class="title_div_sq">
    <div class="title_text" style="color:white;">菜单授权</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <td><div class="imgbtn" onclick="javascript:subPrivilege()"><span class="imgbtn_load"></span><!-- <a href="javascript:subPrivilege();">授权</a> -->授权</div></td>
	</tr></table></div>
</div>

<table border="0" cellspacing="0" cellpadding="0" class="table_tree" width="94%">
<form id="privilegeForm" name="privilegeForm" action="role!setRoleMenu.action" >
<input type="hidden" name="id" value='<s:property value="id" />'/>
    <tr>
        <td valign="top" align="left">
            <script type="text/javascript">
					menuTree = new dTree('menuTree','<%=request.getContextPath()%>');
					menuTree.add(Number(0),-1,'系统功能菜单');
					<s:iterator value="allMenus" status="status">
						<s:if test="isAccredit==1">
							menuTree.add(Number(<s:property value="no"/>),Number(<s:property value="getParentMenuNo(no)"/>),'<input class="checkbox" type="checkbox" name="roleMenus[<s:property value="#status.index"/>]" id="<s:property value="id"/>" checked value="<s:property value="id"/>" onclick="selectbox(this);">'+'<s:property value="name"/>','','','right');
						</s:if>
						<s:else>
							menuTree.add(Number(<s:property value="no"/>),Number(<s:property value="getParentMenuNo(no)"/>),'<input class="checkbox" type="checkbox" name="roleMenus[<s:property value="#status.index"/>]" id="<s:property value="id"/>" value="<s:property value="id"/>" onclick="selectbox(this);" >'+'<s:property value="name"/>','','','right');
						</s:else>
					</s:iterator>
					document.write(menuTree);
			</script>
        </td>
    </tr>
</form>
</table>

 

 
</body>
</html>
