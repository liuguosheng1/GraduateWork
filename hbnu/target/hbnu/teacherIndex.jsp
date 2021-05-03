<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>网络教学辅助平台</title> 
	<base href="<%=basePath%>">
	<link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css" >    
	<link rel="stylesheet" href="resource/bootstrap/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="resource/lib/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="resource/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="resource/css/wukong-ui.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap-select.min.css">
    <script type="text/javascript" src="bootstrap/js/bootstrap-select.min.js"></script>
</head>

<body>
    <div class="row">
        <div class="col-lg-12">
            <div class="banner" id="banner"></div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <ul class="nav nav-tabs wk-nav-menu" id="wk-nav-menu">
                <li role="presentation"><a id="leftNav">[教师:欢迎登陆${teacher.name }]</a></li>
                <li role="presentation"><a href="javascript:void();" id="wk-menu-panel-item-createCollegeVideo" class="wk-main-menu-item">上传课程视频</a></li>
                <li role="presentation"><a href="javascript:void();" id="wk-menu-panel-item-createCollegeFile" class="wk-main-menu-item">上传课程文件</a></li>
                <li role="presentation"><a href="javascript:void();" id="wk-menu-panel-item-searchCollegeVideo" class="wk-main-menu-item">课程视频查询</a></li>
                <li role="presentation"><a href="javascript:void();" id="wk-menu-panel-item-searchCollegeFile" class="wk-main-menu-item">课程文件查询</a></li>
                <li role="presentation"><a href="/getCourse" class="wk-main-menu-item">课程查看</a></li>
                <li role="presentation"><a href="/page" class="wk-main-menu-item">课程创建</a></li>
                <li role="presentation"><a href="<%=basePath%>logout.html" class="wk-main-menu-item">注销登录</a></li>    
            </ul>
        </div>
    </div>
    
    <div class="row">
        <div class="col-lg-2" id="wk-menu-panel" style="width: 15%;">
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel-group wk-accordion-panel-group" id="accordion">
                        
                        <div class="panel panel-info wk-accordion-header">
                            <div class="panel-heading"> 
                                <a data-toggle="collapse" href="#BMenu" data-parent="#accordion">课程文件管理</a>
                            </div>
                             <div id="BMenu" class="panel-collapse collapse">    
                                <div class="list-group wk-accordion-list-group">
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createCollegeVideo"> >&nbsp;&nbsp;上传课程视频</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-searchCollegeVideo"> >&nbsp;&nbsp;查询课程视频</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createCollegeFile"> >&nbsp;&nbsp;上传课程文档</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-searchCollegeFile"> >&nbsp;&nbsp;查询课程文档</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createQuestion"> >&nbsp;&nbsp;随堂小测</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-uploadHomework"> >&nbsp;&nbsp;上传作业</button>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-info wk-accordion-header">
                            <div class="panel-heading">
                                <a data-toggle="collapse" href="#CMenu" data-parent="#accordion">课堂管理</a>
                                
                            </div>
                           
                            <div id="CMenu" class="panel-collapse collapse">    
                                <div class="list-group wk-accordion-list-group">
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createDiscuss"> >&nbsp;&nbsp;新增讨论</button>
                                    <button type="button" class="list-group-item" id="getDisBtn"> >&nbsp;&nbsp;讨论信息管理</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-sjdm"> >&nbsp;&nbsp;随机提问</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createGroup"> >&nbsp;&nbsp;随机分组</button>
<%--                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createQuestion"> >&nbsp;&nbsp;创建问题</button>--%>
                                    <!-- <button type="button" class="list-group-item" id="wk-menu-panel-item-searchDiscussInfo"> >&nbsp;&nbsp;查看讨论</button> -->
                                </div>

                            </div>


                        </div>
                        
                        <div class="panel panel-info wk-accordion-header">
                            <div class="panel-heading">
                                <a data-toggle="collapse" href="#DMenu" data-parent="#accordion">反馈管理</a>
                            </div>
                            <div id="DMenu" class="panel-collapse collapse">    
                                <div class="list-group wk-accordion-list-group">
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createTask"> >&nbsp;&nbsp;教学评价查询</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-searchTask"> >&nbsp;&nbsp;考试信息查询</button>
                                    <!-- <button type="button" class="list-group-item" id="wk-menu-panel-item-searchTask"> >&nbsp;&nbsp;考试完成情况查询</button> -->
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-info wk-accordion-header">
                            <div class="panel-heading"> 
                                <a data-toggle="collapse" href="#EMenu" data-parent="#accordion">学生信息管理</a>
                            </div>
                            <div id="EMenu" class="panel-collapse collapse">    
                                <div class="list-group wk-accordion-list-group">
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-updateTeacherInfo"> >&nbsp;&nbsp;签到信息查询</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-downloadTest"> >&nbsp;&nbsp;下载学生小测</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-downloadHomework"> >&nbsp;&nbsp;下载学生作业</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
         <div  id="rightTable" class="col-lg-10" style="padding:0px;">
            <iframe id="mainFrame" src="<%=basePath%>/searchTeacher.jsp" width="100%" frameborder="0" onload="changeFrameHeight()">
            </iframe>
         </div>
    </div>
    
    <script>
        $(document).ready(function(){
		  var flag=true;
		  $("#leftNav").click(function(){
		    $("#wk-menu-panel").slideToggle();
		    if(flag){
		    	$("#rightTable").css("width", "100%");
		    	$("#rightTable").css("margin-left", "6px");
		    	flag=false;
		    }else{
		  		$("#rightTable").css("width", "84%");
		  		$("#rightTable").css("margin-left", "0px");
		  		flag=true;
		    }		    
		  });
		});
    
        function changeFrameHeight() {
            var ifm= document.getElementById("mainFrame"); 
            ifm.height = document.documentElement.clientHeight - $("#wk-nav-menu").height() - $("#banner").height() - 9;
        }
        window.onresize=function(){  
             changeFrameHeight();  
        } 
        
        changeMenuPanelHeight();
        function changeMenuPanelHeight() {
            var panel= $("#wk-menu-panel"); 
            panel.height(document.documentElement.clientHeight - $("#wk-nav-menu").height() - $("#banner").height() - 3);
            
        }
        window.onresize=function(){  
             changeMenuPanelHeight();  
        }
        $("#getDisBtn").on("click", function() {
            location.href = "/getDiscussion";
        });
        
        $(".list-group-item").each(function() {
            $(this).on("click", function() {
                var url = "";
                var id = $(this).attr("id").substr(19, $(this).attr("id").length);
                
                $("#mainFrame").attr("src",  "<%=basePath%>" + id + ".jsp");
            });
        });

        $(".wk-main-menu-item").each(function() {
            $(this).on("click", function() {
                var url = "";
                var id = $(this).attr("id").substr(19, $(this).attr("id").length);
                if (id!=''){
                    $("#mainFrame").attr("src",  "<%=basePath%>" + id + ".jsp");
                }
            });
        });

        

    </script>


</body>
</html>