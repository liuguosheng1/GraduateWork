<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2021/4/8
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
    <title>随机点名</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css" >
    <link rel="stylesheet" href="resource/bootstrap/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="resource/lib/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="resource/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="resource/css/wukong-ui.css">
    <link rel="stylesheet" href="resource/bootstrap/css/bootstrap-select.min.css">
    <script type="text/javascript" src="resource/bootstrap/js/bootstrap-select.min.js"></script>
    <style>
        #content{
            width: 600px;
            height: 400px;
            background: #000;
            margin: 100px auto;
            text-align: center;
            position: relative;
            line-height: 300px;
            color: dodgerblue;
            font-size: 70px;
        }
        #btn1{
            background: #ccc;
            width: 180px;
            height: 80px;
            font-size: 30px;
            color: #f40;
            border-radius: 12px;
            position: absolute;
            bottom: 30px;
            left: 50%;
            margin-left: -90px;

        }

    </style>
</head>
<body>
<div class="row">
    <div class="col-lg-12">
        <ul class="breadcrumb wk-breadcrumb">
            <li>网络教学辅助平台</li>
            <li>课堂管理</li>
            <li>随机提问</li>
        </ul>
    </div>
</div>
<div id="content">
        <span id="span1">
            点击开始
        </span>
    <button id="btn1" value="start">
        start
    </button>

</div>

<script>
    var arr = ['中国','英国','德国','美国','意大利','法国','西班牙','日本','阿联酋','荷兰','葡萄牙'];
    var $btn1 = document.getElementById('btn1');
    var $content = document.getElementById('content');
    var $span1 = document.getElementById('span1');
    var timer;//计时器
    var testNum = true;
    $btn1.onclick = function(){
        if(testNum){
            // console.log(1);
            start();
            $btn1.innerHTML = 'stop';
            testNum = false;
        }
        else{
            // console.log(0);
            stop();
            $btn1.innerHTML = 'start';
            testNum = true;
        }
    }
    function start(){
        timer = setInterval(function(){
            var num = random(0,arr.length - 1);
            $span1.innerHTML = arr[num];
        },50)
    }
    function stop(){
        clearInterval(timer);
    }
    // 随机函数
    function random(a,b){
        var randomNum = Math.round(Math.random() * (b - a) + a);
        return randomNum;
    }
</script>
</body>
</html>