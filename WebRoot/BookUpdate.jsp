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
    
    <title>更新图书信息</title>
    
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
  <h4 align="center">修改图书信息</h4>
  
     <form action="BookUpdate" method="post">
    	<table align="center"border='1' cellspacing=0>
    		<tr>
    			<td>书名：</td>
    			<td><input type="text" name="book.bookName" value='<s:property value="book.bookName"/>'/></td>
    		</tr>
    		<tr>
    			<td>作者：</td>
    			<td><input type="text" name="book.author" value='<s:property value="book.author"/>'/></td>
    		</tr>
    		<tr align="center">	
    			<input type="hidden" name="book.id" value=<s:property value="book.id"/> />
    			<td colspan="2"><input type="submit" value="修改"/></td>
    		</tr>
    	</table>
    </form>
    
    <s:debug></s:debug>
  </body>
</html>
