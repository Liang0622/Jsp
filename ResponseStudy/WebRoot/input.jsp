<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'input.jsp' starting page</title>
    
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
    	请从以下7种颜色中，选择你最喜欢的颜色<br/>
    <a href="color.jsp?color=赤色">赤色</a>&nbsp;&nbsp;
    <a href="color.jsp?color=橙色">橙色</a>&nbsp;&nbsp;
    <a href="color.jsp?color=黄色">黄色</a>&nbsp;&nbsp;
    <a href="color.jsp?color=绿色">绿色</a>&nbsp;&nbsp;
    <a href="color.jsp?color=青色">青色</a>&nbsp;&nbsp;
    <a href="color.jsp?color=蓝色">蓝色</a>&nbsp;&nbsp;
    <a href="color.jsp?color=紫色">紫色</a>&nbsp;&nbsp;
  </body>
</html>
