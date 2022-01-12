<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>登入 - 后台管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/login.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
</head>
<body style="background: url('img/background.jpg');background-position: center center;background-size: cover;">

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <form action="login" method="post">
    <div class="layadmin-user-login-main">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>东北林业大学新闻系统</h2>

        </div>

        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-username"></label>
                <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
                <input type="password" name="password" id="LAY-user-login-password" lay-verify="required"
                       placeholder="密码" class="layui-input">
            </div>


            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" type="submit" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
            </div>

        </div>
    </div>
    </form>
    <div class="layui-trans layadmin-user-login-footer">

        <div class="layui-main">
            <h4>© 2021 东北林业大学后台管理系统 版权所有</h4>
            <p>
                东北林业大学后台管理系统 PC端页面
            </p>
        </div>
    </div>

</div>


<script>

</script>

<c:if test="${msg!=null}">
    <script>
        alert("${msg}");
    </script>
</c:if>
</body>
</html>