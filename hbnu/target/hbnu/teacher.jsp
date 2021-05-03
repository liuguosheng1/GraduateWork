<%@ page import="com.entity.Teacher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<% String context = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <% Teacher teacher=(Teacher) request.getSession().getAttribute("teacher");%>
    <div class="logo margin-big-left fadein-top">
        <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />教师管理中心</h1>
    </div>
    <div class=" margin-big-right  margin-big-top" align="right" >
        <a class="button button-little bg-green" target="_blank"><span class="icon-user"></span>用户名:<%=teacher.getName()%></a>
        &nbsp;&nbsp;
        <!--    <a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> -->
        &nbsp;&nbsp;<a class="button button-little bg-red" href="index.jsp">
        <span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <h2><span class="icon-user"></span>课堂管理</h2>
    <ul style="display:block">
        <li><a href="/page?tnumber=${tnumber}" target="right"><span class="icon-caret-right"></span>添加课程</a></li>


        <li><a href="/getCourse?tnumber=${tnumber}" target="right"><span class="icon-caret-right"></span>课程信息</a></li>

        <!--   <li><a href="column.html" target="right"><span class="icon-caret-right"></span>删除科室</a></li> -->
    </ul>
    <h2><span class="icon-user"></span>学生管理</h2>
    <ul>
        <li><a href="./getName" target="right"><span class="icon-caret-right"></span>添加医生</a></li>
        <!--   <li><a href="list.html" target="right"><span class="icon-caret-right"></span></a></li>
          <li><a href="add.html" target="right"><span class="icon-caret-right"></span>删除医生</a></li> -->
        <li><a href="./getAllDoctor?pageNum=1&pageSize=2" target="right"><span class="icon-caret-right"></span>医生管理</a></li>
    </ul>
    <h2><span class="icon-pencil-square-o"></span>缴帐管理</h2>
    <ul>
        <li><a href="./getAllOreder?pageNum=1&pageSize=3" target="right"><span class="icon-caret-right"></span>查看预约名单</a></li>
        <li><a href="./getCount?pageNum=1&pageSize=2" target="right"><span class="icon-caret-right"></span>医生预约状态</a></li>
    </ul>
    <h2><span class="icon-pencil-square-o"></span>其他</h2>
    <ul>
        <!--   <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>修改密码</a></li> -->
        <li><a href="./getFeedBack?pageNum=1&pageSize=2" target="right"><span class="icon-caret-right"></span>反馈管理</a></li>
        <li><a href="new.jsp" target="right"><span class="icon-caret-right"></span>公告管理</a></li>
    </ul>
</div>
<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function(){
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>
<ul class="bread">
    <li><a href="/welcome.jsp" target="right" class="icon-home"> 首页</a></li>
    <li><a href="##" id="a_leader_txt">网站信息</a></li>
    <li><b>当前语言：</b><span style="color:red;">中文</span>
        <!--  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li> -->
</ul>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="/welcome.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>
