<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻详情</title>
  <link rel="stylesheet" type="text/css" href="css/public.css"/>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>
  <script type="text/javascript" src="js/jquery1.11.3.min.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <link rel="stylesheet" type="text/css" href="css/public1.css" />
  <link rel="stylesheet" type="text/css" href="css/style1.css" />
  <script type="text/javascript" src="js/public.js"></script>
<style type="text/css">
body {
	background: transparent !important;
}
</style>

</head>

<body>
<!--top-->
<div class="box" id="top">
  <div class="w1200 clearfloat">
    <div class="topLeft clearfloat">
      <a href=""><span class="topIcon1"></span>手机版</a>
      <a href="login.jsp"><span class="topIcon2"></span>登录</a>

    </div>
    <div class="topRight clearfloat">
      <div class="topRightLaug"><a href=""><span class="topIcon3"></span>English</a><i></i></div>
      <div class="topRightPeople">开通人数:3680<em>|</em></div>
    </div>
  </div>
</div>
<!--/top-->

<!--logo-->
<div class="box bgFFF" id="logoBox">
  <div class="w1200 clearfloat">
    <div class="logoLeft">
      <a href=""><img src="img/logo.png"/></a>

    </div>
    <div class="logoRight clearfloat">
      <div class="logoRightWrap">
        <span class="logoIcon1"></span>
        <div class="logoRightInner">
          <h3>电话</h3>
          <p>XXX</p>
        </div>
      </div>
      <div class="logoRightWrap">
        <span class="logoIcon2"></span>
        <div class="logoRightInner">
          <h3>地址</h3>
          <p>XXX</p>
        </div>
      </div>
    </div>
  </div>
</div>
<!--/logo-->

<!--nav顶部-->
<div class="nav_box" style="background-color: #0071a8">
  <div class="nav">
    <ul class="clearfloat">
      <li class="active"><a href="index.html">首页</a></li>
      <li class="nav_more"> 教师队伍
        <div class="nav_down">
          <p><a href="teach.html">教授</a></p>
          <p><a href="teach.html">副教授</a></p>
          <p><a href="teach.html">讲师</a></p>
        </div>
      </li>
      <li class="nav_more"> 实验室介绍
        <div class="nav_down">
          <p><a href="tjiqi.html">机器人实验室</a></p>
          <p><a href="tai.html">人工智能与过程控制实验室</a></p>
          <p><a href="t925.html">923 创新实验室</a></p>
        </div>
      </li>


      <li class="nav_more"> 专业介绍
        <div class="nav_down">
          <p><a href="zhuanye1.html">专业简介</a></p>
          <p><a href="zhuanye2.html">方向简介</a></p>
        </div>
      </li>
      <li class="nav_more"><a href="work.html">就业指南</a></li>
      <li class="nav_more"><a href="ArticleServlet?type=query1">新闻公告</a></li>
    </ul>
  </div>
</div>
<!--/nav-->

<!--banner轮播-->
<div class="box" id="bannerBox">
  <div class="banner sliderBox1">
    <div class="bd">
      <ul>
        <li><a href=""><img src="img/ba.png"/></a></li>
        <li><a href=""><img src="img/banner1.jpg"/></a></li>
        <li><a href=""><img src="img/banner2.jpg"/></a></li>
        <li><a href=""><img src="img/banner3.gif"/></a></li>
      </ul>
    </div>
    <a class="btn prev" href="javascript:"></a>
    <a class="btn next" href="javascript:"></a>
  </div>
</div>
<!--/banner-->



<div class="coll_top">
  <div class="current clearfloat">
    <div class="curr_name"> <span>新闻公告  / </span><em> ABOUT THE HOME PAGE</em> </div>
    <div class="locat"> <span>您当前的位置：</span><a href="">首页 &gt;&gt;</a><em>新闻详情</em> </div>
  </div>
</div>
<div class="about_box">
 <div class="about_pic"> <img src="${article.picurl}"/> </div>
  <div class="about_text">
    <h1>${ article.title}</h1>

    <p>${ article.content}</p>

   </div>
  <div class="about_time"> <span>${ article.createtime}</span> </div>

</div>

<!--footer-->
<div class="box" id="footer">
  <div class="w1200 clearfloat">
    <div class="footerLeft">
      版权所有 2021 东北林业大学信息与计算机工程学院
    </div>

  </div>
</div>
<!--/footer-->

<style>
  .copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>

</body>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
  //banner
  jQuery(".sliderBox1").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop"});
  //热点主页
  jQuery(".sliderBox2").slide({mainCell:".bd ul",effect:"leftLoop",vis: 4,scroll:1});



</script>
</html>
