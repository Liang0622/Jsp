<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录处理页面</title>
    
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
  <%
  	request.setCharacterEncoding("UTF-8");
  	//获取请求数据 
  	String name=request.getParameter("userName").trim();
  	String pwd=request.getParameter("pwd").trim();
  	boolean valid=false;
  	if("admin".equals(name)&&"admin".equals(pwd)){
  		valid=true;
  		//设置用户登录信息 
  		session.setAttribute("login",name);
  		//设置session过期时间
  		session.setMaxInactiveInterval(10*60);
  	}
  	if(valid){
  		request.getRequestDispatcher("admin.jsp").forward(request, response);
  	}else{
  		response.sendRedirect("login.jsp");
  	}
   %>
    
    
  </body>
</html>
