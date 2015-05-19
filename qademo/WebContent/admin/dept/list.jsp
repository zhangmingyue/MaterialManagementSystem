<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page pageEncoding="UTF-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "dept!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>内部框架页</title>
<link href="<%= request.getContextPath() %>/images/dtree.css" rel="stylesheet" type="text/css" />
<link href="<%= request.getContextPath() %>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>
<script language="javascript">
 
	function remov(){   
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		if(confirm("您确定要删除选中的记录吗？")==true){
			document.listForm.action ="dept!remove.action"; 
			document.listForm.target="_self";
			document.listForm.submit();
		}
	}	
	
	function add(){
		var parent = '<s:property value="condition.parent"/>';
		//if(parent==''){
		//	alert("请选择组织机构！");
		//	return;
		//}
		window.location.href = "dept!queryById.action?parentId="+parent;
	}
	function queryById(id){
		window.location.href = "dept!queryById.action?id="+id;
	}
	
	function query(){
		window.location.href =	"dept!pagedQuery.action";
	}	
</script>
</head>
<body>
 <div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 系统管理> 部门维护</div>
</div>

<div class="title_div">
    <div class="title_text">部门维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr>
    <td><div class="imgbtn" onclick="javascript:add()"><span class="imgbtn_add"></span>添加</div></td>
    <td><div class="imgbtn" onclick="javascript:remov()"><span class="imgbtn_delete"></span>删除</div></td>
    </tr></table></div>
</div>
<table border="0" cellspacing="0" cellpadding="0" class="table_tree"
	width="1003"  >
	<form name="listForm" action="" method="post">
	<tr>
		<td width="20%" valign="top" align="left"><script
			type="text/javascript">
				deptTree = new dTree('deptTree','<%= request.getContextPath() %>');
				deptTree.add('',-1,'组织机构','dept!pagedQuery.action?condition.parent=','','');
				<s:iterator value="deptTreeList" status="status">
					deptTree.add('<s:property value="code"/>','<s:property value="parentCode"/>','<s:property value="name"/>','dept!pagedQuery.action?condition.parent=<s:property value="code"/>','','');
				</s:iterator>
				document.write(deptTree);
			</script></td>
		<td width="80%"  valign="top">
		<table border="0" cellspacing="0" cellpadding="0" class="table_style"
			width="100%" >
			<tr class="table_th">
				<td width="5%" align="center">序号</td>
				<td width="10%" align="center">操作</td>
				<td width="5%" align="center"><input class="checkbox"
					type="checkbox" name="all"
					onclick="javascript:check(listForm,listForm.all);" /></td>
				<td width="20%">名称</td>
				<td width="30%">通讯地址</td>
				<td width="10%">邮编</td>
				<td width="10%">分类属性</td>
				<td width="10%">一般属性</td>
			</tr>
			<s:iterator value="currentPage.data" status="status">
				<s:if test="#status.odd == true">
					<tr class="table_1">
				</s:if>
				<s:else>
					<tr class="table_2">
				</s:else>
				<td width="4%" align="center"><s:property
					value="currentPage.start + #status.count" /></td>
				<td >
				<!--<a href="javascript:queryById('<s:property value="id"/>');">修改</a>-->
					<!--<input type="button" name="button" value="修改" onclick="javascript:queryById('<s:property value="id"/>')"> </input>-->
					<!--<div class="imgbtn" onclick="javascript:edit('<s:property value="id"/>')" ><span class="imgbtn_edit"></span>编辑
					
					<div class="imgbtn" onclick="javascript:queryById('<s:property value="id"/>')"><span class="imgbtn_edit"></span>修改</div>
					
					-->
					<div class="imgbtn" onclick="javascript:queryById('<s:property value="id"/>')" ><span class="imgbtn_edit"></span>编辑
					</td>
				<td align="center"><input class="checkbox" align="center"
					name="ids" type="checkbox" value="<s:property value="id"/>" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="address" /></td>
				<td><s:property value="postcode" /></td>
				<td><s:property
					value="@com.dqyx.admin.CategoryCode@getName(categoryCode)" /></td>
				<td><s:property
					value="@com.dqyx.admin.CommonCode@getName(commonCode)" /></td>
				</tr>
			</s:iterator>

		</table>
		</td>
	</tr>
	</form>
	<tr>
		<td colspan="2" align="right"><%@ include
			file="/inc/pagetable.inc"%></td>
	</tr>
</table>
</div>
</body>
</html>
