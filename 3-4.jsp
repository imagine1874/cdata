<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '3-4.jsp' starting page</title>
    
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
    String[]catalog = {"服装","汽车","鞋包","手机"};
    String[][]brand = {
      {"优衣库","三彩","eland","拉夏贝尔","ochirly","真维斯","美特斯邦威","only","森马","圣宝龙","海澜之家"},
      {"奔驰","宝马","别克","大众","福特","捷豹","现代","雪铁龙","雪佛兰","劳斯莱斯"},
      {"达芙妮","kisscat","kisskitty","稻草人","七匹狼","奥康","百丽","万里马","红蜻蜓","金利来"},
      {"小米","华为","苹果","三星","vivo","oppo","中兴","LG","金立","魅族"}};
      int cid = 0;
      if(request.getParameter("id")!=null)
      cid = Integer.parseInt(request.getParameter("id"));
      String str = "";
      for(int i = 0;i < 10;i++){
      str+=brand[cid][i]+"&nbsp;&nbsp;";
      }
    %>
    <table border=1 style="border-spacing:0px;border-collapse:collapse;">
    <tr><td>分类</td><td>品牌</td></tr>
    <tr>
        <td style="width:50px;text-align:cneter;height:10px;">
          <a href="3-4.jsp?id=0">服装</a>
          <a href="3-4.jsp?id=1">汽车</a>
          <a href="3-4.jsp?id=2">钱包</a>
          <a href="3-4.jsp?id=3">手机</a>
        </td>
        <td><%=str %></td>
    </tr>
    </table>
  </body>
</html>
