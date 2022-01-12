<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 项目绝对路径-->
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Book添加页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/layui/css/layui.css"/>
    <script type="text/javascript" src="static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">

    <form class="layui-form" action="UploadServlet" method="post" style="width: 500px;margin: 50px auto;" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label">isbn</label>
            <div class="layui-input-block">
                <input type="text" name="isbn" id="isbn" value="" lay-verify autocomplete="off"
                       placeholder="请输入isbn"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">书名</label>
            <div class="layui-input-block">
                <input type="text" name="bookname" id="bookname" value="" lay-verify autocomplete="off"
                       placeholder="请输入书名"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">作者</label>
            <div class="layui-input-block">
                <input type="text" name="author" id="author" value="" lay-verify autocomplete="off"
                       placeholder="请输入作者"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">出版社</label>
            <div class="layui-input-block">
                <input type="text" name="press" id="press" value="" lay-verify autocomplete="off"
                       placeholder="请输入出版社"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">类型</label>
            <div class="layui-input-block">
                <input type="text" name="type" id="type" value="" lay-verify autocomplete="off"
                       placeholder="请输入类型"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">上传照片</label>
            <div class="layui-input-block">
                <%-- <input type="text" name="pictureaddr" id="pictureaddr" value="" lay-verify autocomplete="off"
                        placeholder="请输入照片地址"
                        class="layui-input">--%>
                <img width="165" height="180" id="prevView" src="static/imge/up.jpg"/>
                <input type="file" id="file" name="file" onchange="prev(this)"
                       style="height:180px;width:165px;opacity:0;cursor:pointer;position: absolute;
top: 0;left: 0;z-index: 9;" />
            </div>
        </div>
        <%--<div class="layui-form-item">
            <label class="layui-form-label">创建时间</label>
            <div class="layui-input-block">
                <input type="text" name="createtime" id="createtime" value="" lay-verify autocomplete="off"
                       placeholder="请输入创建时间"
                       class="layui-input">
            </div>
        </div>--%>
        <div class="layui-form-item">
            <label class="layui-form-label">价格</label>
            <div class="layui-input-block">
                <input type="text" name="money" id="money" value="" lay-verify autocomplete="off"
                       placeholder="请输入价格"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">简介</label>
            <div class="layui-input-block">
                <input type="text" name="remark" id="remark" value="" lay-verify autocomplete="off"
                       placeholder="请输入简介"
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
