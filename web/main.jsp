<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="userIndex" value="${ctx}/manage/personalData"/>
<%--登陆判断--%>
<c:if test="${sessionScope.loginAdmin==null}">
    <%--没有登录则跳转到后台登陆页面--%>
    <c:redirect url="login.jsp"/>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>新闻后台管理系统</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script src="${ctx}/static/js/jquery-1.9.1.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">新闻后台管理系统</div>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    ${sessionScope.loginAdmin.username}
                </a>
            </li>
            <li class="layui-nav-item"><a href="${ctx}/loginOut">退出登录</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">



                    <li class="layui-nav-item">
                        <a href="ArticleServlet?type=query" target="tqmcontent">新闻管理</a>
                    </li>


            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <!-- 内容主体区域 -->
        <div style="padding: 0px;height: 100%;width: 100%;">
            <iframe src="ArticleServlet?type=query" name="tqmcontent"
                    style="border: 0px solid blue;height: 100%;width: 100%;scrolling:auto;"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>

<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>
</body>
</html>