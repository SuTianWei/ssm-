<%--
  Created by IntelliJ IDEA.
  User: SuTianWei
  Date: 2019/4/9
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>vada漫画</title>
</head>
<body>
<a href="${path }/paper/allPaper">点击进入vada漫画后台管理页面</a>
</body>
</html>
