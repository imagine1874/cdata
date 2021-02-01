<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '3-2.jsp' starting page</title>
    
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
    <form action="">
    半径：<input type="text" name="r1"/>
       <input type="submit" value="提交" name="submit"/>"
    </form>
    <%
    String strR = request.getParameter("r1");
    double s = 0,r = 0;
    if(strR == null) strR="0";
    try{
     r = Double.parseDouble(strR);
     if(r>=0){
       s = 3.14*r*r;
       out.println("半径为"+r+"的圆面积为"+s);
       }
       }
       catch(NumberFormatException e)
       {
        out.println("请输入数字！");
       } %>
  </body>
</html>
