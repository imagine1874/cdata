<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login01.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
	  td.right{
	  text-align:right;}
	</style>
  </head>
  
  <body>
    <h3>用户登录</h3><hr/>
    <form action="" method="post">
      <table>      
        <tr><td class="right">用户名：<input type="text" name="uname"/></td></tr>
        <tr><td class="right">密码：<input type="password" name="upwd"/></td></tr>
        <tr><td colspan="2"><input type="submit" value="登录"/>
                            <input type="reset" value="重置"/></td></tr>
      </table>
      <%!
    boolean ValidateUser(String name,String pwd){
      if(name.equals("liuyang")&&pwd.equals("123"))return true;
      else return false;
      }
     %>
     <%
     if(request.getParameter("uname")==null||request.getParameter("upwd")==null){
     return;}
     String name = request.getParameter("uname");
     String pwd = request.getParameter("upwd");
     if(name.equals("")||pwd.equals("")){
     out.println("用户密码不能为空！");
     return;}
     if(!ValidateUser(name,pwd)){
     out.println("用户密码不正确！");
     return;}
     response.sendRedirect("userinfo.jsp?name="+name+"&pwd="+pwd);
      %>
    </form>
  </body>
</html>
