<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 项目绝对路径-->
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Article列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/layui/css/layui.css"/>
    <script type="text/javascript" src="static/layui/layui.js"></script>
    <link rel="stylesheet" href="static/css/pintuer.css"/>
    <link rel="stylesheet" href="static/css/admin.css">
</head>
<body>
<div class="layui-container" style="width: 100%">

<br>
    <div class="padding border-bottom">
        <ul class="search">

            <li><a href="articleAdd.jsp" class="layui-btn layui-btn"><span
                    ></span> 添加新闻</a>
            </li>


        </ul>
    </div>


    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
             <th>新闻ID</th>
             <th>新闻标题</th>
             <th>新闻内容</th>
             <th>创建时间</th>
             <th>备注</th>
             <th>图片</th>
            <th style="width: 150px">操作</th>
        </tr>


    <c:forEach items="${articleList}" var="v">
        <tr>
            <td>${v.id}</td>
            <td>${v.title}</td>
            <td>${v.content}</td>
            <td>${v.createtime}</td>
            <td>${v.intro}</td>
            <td><img src="${v.picurl}" style="width: 60px;height: 60px"></td>
            <td>
                <a href="ArticleServlet?type=edit&id=${v.id}" class="layui-btn layui-btn layui-btn-sm">修改</a>
                <a href="ArticleServlet?type=delete&id=${v.id}" class="layui-btn layui-btn-danger layui-btn-sm">删除</a>
            </td>
        </tr>
    </c:forEach>


        </tbody>
    </table>
</div>


</body>
</html>
