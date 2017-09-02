<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>图书信息管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h3 align="center">书籍信息</h3><hr>
    <center><a href ="BookAdd.jsp">添加书籍信息</a></center>
    
    <table align="center"border='1' cellspacing=0>
    	<tr>
    	<th>id</th>
    	<th>书名</th>
    	<th>作者</th>
    	<th>编辑</th>
    	</tr>
    	<s:iterator value="books">
		<tr>
		<td><s:property value="id"/></td>
		<td><s:property value="bookName"/></td>
		<td><s:property value="author"/></td>
		<td><a href="BookDelete?id=<s:property value="id"/>" onclick="return delete_confirm();">删除</a>  <a href="BookUpdateLoad?id=<s:property value="id"/>">修改</a></td>
    	</tr>
    	</s:iterator>
    </table>
    <s:debug></s:debug>
    <script language="JavaScript">
		function delete_confirm(){
			var k = window.confirm("你确定要删除该记录");
			if (k) {
				return true;
			} else {
				return false;
			}
		}
	</script>
  </body>
</html>
