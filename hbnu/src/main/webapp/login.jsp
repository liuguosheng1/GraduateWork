<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.swing.text.Style" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>翻转课堂</title>
</head>
<body bgcolor=LightBlue>
<div align="center">
    <br>
    <H1>翻转课堂</H1>
    <form name="form1" action="${pageContext.request.contextPath }/login" method="post" target="_self">
        <table width="90%" >
            <tr align="center">
                <td width="50%" height="50" align="right">账号：</td>
                <td width="50%" height="50" align="left"> <input type="text" name="number"></td>
            </tr>
            <tr align="center">
                <td width="50%" height="50" align="right">密码：</td>
                <td width="50%" height="50" align="left"> <input type="password" name="password"></td>
            </tr>
            <td width="100%" height="40" align="center" colspan="2">
                <input type="submit" name="sub" value="登录">
            </td>
            </tr>
        </table>
    </form>
</div>
<%
    String str=(String)request.getSession().getAttribute("msg");
    if(str!=null){
        out.print(str);
    }
%>
</form>
</body>
</html>

<%@ page import="com.entity.Teacher" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2021/3/31
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head >
    <title>教师首页</title>
    <style>
        body{text-align: center}
        #divcss1{margin: 20px auto;border:2px solid coral; width: 850px;height: 400px;
            background: darkturquoise;padding-left: 40px;}
    </style>
</head>
<body bgcolor="#90ee90" >
<% Teacher teacher=(Teacher) request.getSession().getAttribute("teacher");%>
欢迎进入
<%=teacher.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
教师编号
<%= teacher.getTnumber()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
课程：
<%=teacher.getCourse()%><br>
<div id="divcss1">
    <form style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="新建课程" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="随机分组">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form >
    <form method="get" action="/sign" style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="签到信息" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form method="get" action="/sign" style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="随机提问" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form method="get" action="/sign" style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="随机分组" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form method="get" action="/sign" style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="随堂测试" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <form method="get" action="/sign" style="float: left">
        <input align="center" style="color: darkorange" type="submit" value="发布作业" url="/sign">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>


</div>

</body>
</html>
