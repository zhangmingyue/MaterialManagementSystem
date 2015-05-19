<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page pageEncoding="UTF-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "role!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>角色维护</title>
<link href="<%= request.getContextPath() %>/images/dtree.css" rel="stylesheet" type="text/css" />
<link href="<%= request.getContextPath() %>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.funkyUI.js"></script>
<script language="javascript">
	//授权显示菜单 
	function showMenu(id){
		$.funkyUI({
		url:'role!showRoleMenus.action?id='+id,
		css:{width:"300",height:"400"}
	});
	}
	
	function remov(){   
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		if(confirm("您确定要删除选中的记录吗？")==true){
			document.listForm.action ="role!remove.action"; 
			document.listForm.target="_self";
			document.listForm.submit();
			saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');
		}
	}	
	
	function add(){
		var deptId = '<s:property value="condition.deptId"/>';
		if(deptId==''){
			alert("请选择组织机构！");
			return;
		}
		window.location.href = "role!queryById.action?deptId="+deptId;
	}
	function queryById(id){
		window.location.href = "role!queryById.action?id="+id;
	}
	function callbak(){}
	$(document).ready(function(){
		//提示信息
		showTip();
	});
</script>
</head>
<body>
 <div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 系统管理 > 角色维护</div>
</div>
 
<div class="title_div">
    <div class="title_text">角色维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <!--<td><div class="imgbtn"><span class="imgbtn_add"></span><a href="javascript:add();">添加</a></div></td>
    <td><div class="imgbtn"><span class="imgbtn_delete"></span><a href="javascript:remove();">删除</a></div></td>
    -->
    <td><div class="imgbtn" onclick="javascript:add()"><span class="imgbtn_add"></span>添加</div></td>
    <td><div id="delBtn" class="imgbtn" onclick="javascript:remov()"><span class="imgbtn_delete"></span>删除</div></td>
    </tr></table></div>
</div>

<table border="0" cellspacing="0" cellpadding="0" class="table_tree" width="1003">

    <tr>
        <td width="20%" valign="top" align="left">
            <script type="text/javascript">
				deptTree = new dTree('deptTree','<%= request.getContextPath() %>');
				deptTree.add(Number(0),-1,'组织机构','role!pagedQuery.action?condition.deptId=','','');
				// <s:iterator value="deptTreeList" status="status">
				//	deptTree.add(Number(<s:property value="code"/>),Number(<s:property value="parentCode"/>),'<s:property value="name"/>','role!pagedQuery.action?condition.deptId=<s:property value="id"/>','','');
				//</s:iterator> 
				<s:iterator value="deptTreeList" status="status">
					deptTree.add('<s:property value="code"/>','<s:property value="parentCode"/>','<s:property value="name"/>','role!pagedQuery.action?condition.deptId=<s:property value="id"/>','','');
				</s:iterator>
				document.write(deptTree);
			</script>
        </td>
        <td width="80%" valign="top">
            <table border="0" cellspacing="0" cellpadding="0" class="table_style" width="100%">
               <form name="listForm" action="" method="post">
              <tr class="table_th">
                <td width="5%" align="center">序号</td>
                <td width="20%" align="center">操作</td>
                <td width="5%" align="center"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>
                <td width="35%">角色编码</td>
                <td width="35%">角色名称</td>
              </tr>
           
		<s:iterator value="currentPage.data" status="status">
			<s:if test="#status.odd == true">
			 <tr class="table_1">
					</s:if>
					<s:else>
					<tr class="table_2">
					</s:else>
					<td align="center"><s:property value="currentPage.start + #status.count"/></td>
					<td align="center">
					<!--<a href="javascript:queryById('<s:property value="id"/>');">修改</a>&nbsp;<a href="javascript:showMenu('<s:property value="id"/>');">授权</a>
					-->
					<div class="imgbtn2" onclick="javascript:queryById('<s:property value="id"/>')" ><span class="imgbtn_edit"></span>编辑</div>
					<div class="imgbtn2" onclick="javascript:showMenu('<s:property value="id"/>')" ><span class="imgbtn_pass"></span>授权</div>
					</td>
					<td align="center"><input class="checkbox"  align="center" name="ids" type="checkbox" value="<s:property value="id"/>"/></td>
					<td><s:property value="no"/></td>
					<td><s:property value="name"/></td>
			 </tr>
		</s:iterator>
		</form>
            </table>
        </td>
    </tr>
	<tr><td colspan="2" align="right"> <%@ include file="/inc/pagetable.inc"%> </td></tr>

</table>
</div>
</body>
</html>
