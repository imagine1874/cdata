<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '3-1.jsp' starting page</title>
    
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
    <form action="" method="post">
      <input type="text" name="username"/>
      <input type="submit" value="提交"/>
    </form>
    请求方式：<%=request.getMethod() %><br>
    请求的资源：<%=request.getRequestURI() %><br>
    请求的文件路径：<%=request.getServletPath() %><br>
    请求的服务器：<%=request.getServerName() %><br>
    请求的服务器端口：<%=request.getServerPort() %><br>
    客户端IP：<%=request.getRemoteAddr() %><br>
    客户端主机名：<%=request.getRemoteHost() %><br>
    表单提交的用户名：<%=request.getParameter("username") %>
  </body>
</html>
