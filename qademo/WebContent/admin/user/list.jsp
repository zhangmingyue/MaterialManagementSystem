<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page pageEncoding="UTF-8"%>
<%@ include file="/inc/main.inc"%>
<% 
String href = "user!pagedQuery.action";
String target="";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>内部框架页</title>
<link href="<%= request.getContextPath() %>/images/dtree.css" rel="stylesheet" type="text/css" />
<link href="<%= request.getContextPath() %>/images/style_frame.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/dtree.js"></script>
<script language="javascript"><!--
 
	function remov(){   
		if(hasChecked(listForm)==false){
			alert("请选择要删除的记录!");
			return;
		}
		if(confirm("您确定要删除选中的记录吗？")==true){
			document.listForm.action ="user!remove.action"; 
			document.listForm.target="_self";
			document.listForm.submit();
			saveOkTip('删除中，请稍候....' , 'btn' , 'delBtn');
		}
	}	
	
	function add(){
		if(verify()){
			document.editForm.submit();
		}
	}
	function add1(){
		var deptId='<s:property value="condition.deptId"/>'
		
	var id='<s:property value="id"/>';
	window.location.href="user!queryById.action?id="+id+"&deptId="+deptId;
		
	}
	function queryById(id,did){
		window.location.href = "user!queryById.action?id="+id+"&deptId="+did;
	}
	
	function query(){
		window.location.href =	"user!pagedQuery.action";
	}	
	
	function verify(){
		setSelected("user.role.id","角色");
		if(!Validator.Validate(document.getElementById('editForm'),2)) return false;
		return true;
	}
	
	function setSelected(name,msg){
		ControlUtils.getControl(name).dataType="Require";
		ControlUtils.getControl(name).msg="请填写【"+msg+"】！";
		ControlUtils.getControl(name).require="true";
	}
	$(document).ready(function(){
		//提示信息
		showTip();
	});
--></script>
</head>
<body>
 <div class="gbg">
<div class="position_div">
	<div class="position_div_text">当前位置： 系统管理 > 用户维护</div>
</div>


<div class="title_div">
    <div class="title_text">用户维护</div>
    <div class="title_other"><table height="36" border="0" cellspacing="0" cellpadding="0" align="right"><tr><!--
    <td><div class="imgbtn" onclick="javascript:queryById('<s:property value="id"/>','<s:property value="role.dept.id"/>');"><span class="imgbtn_add"></span>添加</div></td>
      -->
    <td><div class="imgbtn" onclick="javascript:add1()"><span class="imgbtn_add"></span>添加</div></td>
    <td><div  id="delBtn"  class="imgbtn" onclick="javascript:remov()"><span class="imgbtn_delete"></span>删除</div></td>
    </tr></table></div>
</div>



<table border="0" cellspacing="0" cellpadding="0" class="table_tree" width="1003">
    <tr>
        <td width="20%" valign="top" align="left">
            <script type="text/javascript">
				deptTree = new dTree('deptTree','<%= request.getContextPath() %>');
				deptTree.add(Number(0),-1,'组织机构','user!pagedQuery.action?condition.deptId=','','');
				//<s:iterator value="deptTreeList" status="status">
				//	deptTree.add(Number(<s:property value="code"/>),Number(<s:property value="parentCode"/>),'<s:property value="name"/>','user!pagedQuery.action?condition.deptId=<s:property value="id"/>','','');
				//</s:iterator>
				<s:iterator value="deptTreeList" status="status">
					deptTree.add('<s:property value="code"/>','<s:property value="parentCode"/>','<s:property value="name"/>','user!pagedQuery.action?condition.deptId=<s:property value="id"/>','','');
				</s:iterator>
				document.write(deptTree);
			</script>        </td>
        <td width="80%" valign="top">
            <table border="0" cellspacing="0" cellpadding="0" class="table_style" width="100%">
        <form name="listForm" action="" method="post">
            <input type="hidden" name="deptId" value='<s:property value="condition.deptId"/>'/>
              <tr class="table_th" align="center">
                <td width="5%" align="center">序号</td>
                <td width="8%" align="center">操作</td>
                <td width="5%" align="center"><input class="checkbox" type="checkbox" name="all" onclick="javascript:check(listForm,listForm.all);" /></td>
                <td width="17%">所属角色</td>
                <td width="11%">用户名</td>
				<td width="12%">真实姓名</td>
				<td width="15%">身份证号</td>
				<td width="8%">状态</td>
              </tr>
		<s:iterator value="currentPage.data" status="status">
			<s:if test="#status.odd == true">
			 <tr class="table_1" align="center">					</s:if>
					<s:else>
					<tr class="table_2" align="center">					</s:else>
					<td width="4%" align="center"><s:property value="currentPage.start + #status.count"/></td>
					<td align="center">
					<div onclick="javascript:queryById('<s:property value="id"/>','<s:property value="role.dept.id"/>');" ><img class="img" src="<%= request.getContextPath() %>/images/bimgs/modify.gif" title="修改"></div>
					</td>
					<td align="center"><input  align="center" name="ids" type="checkbox" value="<s:property value="id"/>"/></td>
					<td><s:property value="role.name"/></td>
					<td><s:property value="userName"/></td>
					<td><s:property value="realName"/></td>
					<td><s:property value="identification"/></td>
					<td><s:property value="changeLogin"/></td>
			 </tr>
		</s:iterator>
		</form>
		<!--
	  <form  id="editForm" name="editForm" action="user!save.action" method="post">
			<input type="hidden" name="deptId" value='<s:property value="condition.deptId"/>'/>
			<tr class="table_2">
					<td align="center" colspan="3"><div class="imgbtn"><span class="imgbtn_add"></span><a href="javascript:add();">添加</a></div></td>
					<td><s:select id="role"  name="user.role.id" value="user.role.id"   headerKey="" headerValue="请选择" list="userRoles" listKey="id" listValue="name" /></td>
					<td><input size="15" maxlength="20" class="txt" name="user.userName" dataType="English" require="false" msg="登录名称只允许英文字母!"/></td>
					<td><input size="15" maxlength="20" class="txt" type="password"  name="user.password" dataType="Require"  msg="请输入【密码】！" /></td>
					<td><input size="15" maxlength="10" class="txt"  name="user.realName" /></td>
					<td><input size="15" maxlength="30" class="txt"  name="user.identification" /></td>
					<td><s:select  name="user.islogin"  list="#{'Y':'允许','N':'不允许'}" style="width:80px;"  /></td>
			 </tr>
		</form>
    -->
    </table>
        </td>
    </tr>
	<tr><td colspan="2" align="right"> <%@ include file="/inc/pagetable.inc" %>
	</td></tr>
</table>
</div>

 
</body>
</html>
