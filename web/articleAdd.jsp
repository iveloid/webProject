<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 项目绝对路径-->
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Article添加页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/layui/css/layui.css"/>
    <script type="text/javascript" src="static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">
    <form class="layui-form" action="UploadServlet" method="post" style="width: 500px;margin: 50px auto;" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label">新闻标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" id="title" value="" lay-verify autocomplete="off"
                       placeholder="请输入新闻标题"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新闻内容</label>
            <div class="layui-input-block">
                <textarea  name="content" id="content" class="layui-textarea"></textarea>

            </div>

        </div>



        <div class="layui-form-item">
            <label class="layui-form-label">上传照片</label>
            <div class="layui-input-block">

                <img width="165" height="180" id="prevView" src="img/up.jpg"/>
                <input type="file" id="file" name="picurl" onchange="prev(this)"
                       style="height:180px;width:165px;opacity:0;cursor:pointer;position: absolute;
top: 0;left: 0;z-index: 9;" />
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

<script type="text/javascript">
    function prev(event){
        //获取展示图片的区域
        var img = document.getElementById("prevView");
        //获取文件对象
        let file = event.files[0];
        //获取文件阅读器
        let reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function(){
            //给img的src设置图片url
            img.setAttribute("src", this.result);
        }
        img.style.display=block;
    }
</script>
</body>
</html>
