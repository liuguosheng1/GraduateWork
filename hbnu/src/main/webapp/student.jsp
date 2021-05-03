<%@ page import="com.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2021/3/31
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head >
    <title>学生首页</title>
    <style>
        body{text-align: center}
        #div1{margin: 20px auto;border:2px solid coral; width: 850px;height: 600px;
            padding-left: 40px;background: teal}
        #div2{
            margin: 100px 5px;height: 170px;
            width: 100px;padding: 80px 10px;
            background: #008088;
            color: white;
        }
    </style>
</head>
<body bgcolor="#4682b4">
<p style="color: crimson">欢迎进入</p>
<div id="div1" >
    <form style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="查看课堂" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="点击签到" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="课后作业作业" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="查看小测" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="查看分组" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <div id="div2">
        <% User user=(User)request.getSession().getAttribute("user");%>

        姓名：<%=user.getName()%><br>
        班级：<%=user.getGrade()%><br>
        学号：<%=user.getNumber()%>

    </div>


</div>

</body>
</html>
