<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>书籍添加页面</title>
    
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
    <h4 align="center">添加图书信息</h4>
    <form action="BookAdd" method="post">
    	<table align="center"border='1' cellspacing=0>
    		<tr>
    			<td>书名：</td>
    			<td><input type="text" name="book.bookName" /></td>
    		</tr>
    		<tr>
    			<td>作者：</td>
    			<td><input type="text" name="book.author" /></td>
    		</tr>
    		<tr align="center">	
    			<td colspan="2"><input type="submit" value="添加"/></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
