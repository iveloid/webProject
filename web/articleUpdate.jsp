<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 项目绝对路径-->
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Article修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/layui/css/layui.css"/>
    <script type="text/javascript" src="static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">

    <form class="layui-form" action="ArticleServlet?type=update" method="post" style="width: 500px;margin: 50px auto;">
        <input type="hidden" name="id" value="${article.id}"/>
        <div class="layui-form-item">
            <label class="layui-form-label">新闻标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" id="title" value="${article.title}" lay-verify autocomplete="off"
                       placeholder="请输入新闻标题"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新闻内容</label>
            <div class="layui-input-block">

                <textarea class="layui-textarea" name="content">${article.content}</textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">创建时间</label>
            <div class="layui-input-block">
                <input type="text" name="createtime" id="createtime" value="${article.createtime}" lay-verify autocomplete="off"
                       placeholder="请输入创建时间"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <input type="text" name="intro" id="intro" value="${article.intro}" lay-verify autocomplete="off"
                       placeholder="请输入备注"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">图片</label>
            <div class="layui-input-block">
                <input type="text" name="picurl" id="picurl" value="${article.picurl}" lay-verify autocomplete="off"
                       placeholder="请输入图片"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

</div>


</body>
</html>
