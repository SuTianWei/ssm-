<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改论文</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    vada漫画后台管理
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改漫画</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="" name="userForm">
        <input type="hidden" name="paperId" value="${paper.paperId}"/>
        漫画名称：<input type="text" name="paperName" value="${paper.paperName}"/>
        漫画价格：<input type="text" name="paperNum" value="${paper.paperNum}"/>
        漫画详情：<input type="text" name="paperDetail" value="${paper.paperDetail }"/>
        <input type="button" value="提交" onclick="updatePaper()"/>
    </form>
    <script type="text/javascript">
        function updatePaper() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/updatePaper";
            form.method = "post";
            form.submit();
        }
    </script>
</div>
