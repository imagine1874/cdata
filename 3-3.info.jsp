<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '3-3.info.jsp' starting page</title>
    
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
    String uname = request.getParameter("uname");
    String usex = request.getParameter("usex");
    String ueducation = request.getParameter("ueducation");
    String[] uchannel = request.getParameterValues("uchannel");
     %>
     您输入的调查信息：
     <br>姓名：<%=uname %>
     <br>性别：<%=usex %>
     <br>学历：<%=ueducation %><br>
     <% if(uchannel != null){ %>
     渠道：
     <% for(int i=0; i<uchannel.length;i++){ %>
     <%=uchannel[i] %>&nbsp;&nbsp;
     <% }} %>
  </body>
</html>
