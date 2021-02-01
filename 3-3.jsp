<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '3-3.jsp' starting page</title>
    
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
    <h3>信息调查</h3><hr/>
   <form action="info.jsp" name="f1" method="post">
   姓名：<input type="text" name="uname" /><br/>
   性别：<input type="radio" name="usex" value="男" checked/>男
       <input type="radio" name="usex" value="女"/>女<br/>
   学历：<select name="ueduction">
       <option value="初中及以下">初中及以下</option>
       <option value="高中">高中</option>
       <option value="大专">大专</option>
       <option value="本科">本科</option>
       <option value="研究生">研究生</option>
       <option value="博士">博士</option>
       </select><br/>
       获取信息渠道：
       <input type="checkbox" name="uchannel" value="杂志">杂志
       <input type="checkbox" name="uchannel" value="网络">网络
       <input type="checkbox" name="uchannel" value="朋友推荐">朋友推荐
       <input type="checkbox" name="uchannel" value="报纸">报纸
       <input type="checkbox" name="uchannel" value="其他">其他<br>
       <input type="submit" name="submit" value="提交">
   </form> 
  </body>
</html>
