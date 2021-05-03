<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<base href="<%=basePath%>">
<link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resource/bootstrap/css/bootstrap-theme.min.css">
<script type="text/javascript" src="resource/lib/jquery-3.1.1.js"></script>
<script type="text/javascript"
	src="resource/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resource/css/wukong-ui.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-select.min.css">
<script type="text/javascript"
	src="bootstrap/js/bootstrap-select.min.js"></script>
	
  <style> 
   .black_overlay{ display: none; position: absolute; top: 0%; left: 0%; width: 100%; height: 100%; background-color: black; z-index:1001; -moz-opacity: 0.6; opacity:.60; filter: alpha(opacity=60); } 
   .white_content { display: none; position: absolute; top: 25%; left: 25%; width: 50%; height: 50%; padding: 16px; border: 16px solid orange; background-color: white; z-index:1002; overflow: auto; } 
   </style>  
    <script>
    
    
	 $(function(){  
	 	document.getElementById('light').style.display='block';
	     document.getElementById('fade').style.display='block' 
	 });
     
   function one(id){
	   alert(id);
	  if (id != "") {
			location.href = "<%=basePath%>updateNotice1/" + id +".html";
       }
    document.getElementById('light').style.display='block';
    document.getElementById('fade').style.display='block'
   }
   function two(){
    document.getElementById('light').style.display='none';
    document.getElementById('fade').style.display='none'
   }
   </script> 	
	
	
</head>

<body>
	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb wk-breadcrumb">
				<li>网络教学辅助平台</li>
	            <li>公告信息管理</li>
	            <li>公告信息查询</li>
			</ul>
		</div>
	</div>

	

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default  wk-panel">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>公告标题</th>
							<th>公告内容</th>
							<th>发表时间</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${notices}" var="var" varStatus="st">
						<tr>
							<td>
								<a href="javascript:void(0)" onclick="one(${var.id})">${var.title} </a>
							</td>
							<td>${var.content}</td>
							<td><fmt:formatDate value="${var.recordTime}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
						</tr>	
						</c:forEach>
					</tbody>
					
				</table>
			</div>
		</div>
	</div>
	
  <div id="light" class="white_content">
		<h4>${notices[0].title}</h4>
   		<span>${notices[0].content}</span>
   		<br><br><br>
    <a href="javascript:void(0)" onclick="two()">关闭</a>
  </div> 
  <div id="fade" class="black_overlay"> 
  </div> 


	<div class="modal fade" tabindex="-1" role="dialog"
		id="deleteConfirm">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header wk-modal-header">
					<button class="close" type="button" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4>系统提示</h4>
				</div>
				<div class="modal-body">您确定要删除这些记录？</div>
				<div class="modal-footer wk-modal-footer">
					<button id="deleteBtnOK" type="submit"
						class="btn btn-default wk-btn" data-dismiss="modal">确定</button>
					<button type="button" class="btn btn-default wk-tool-btn"
						data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>




	<script>

    $("#deleteBtn").on("click", function() {
        var id = "";
        $(":radio").each(function() {
            if ($(this).is(":checked")) {
                id = $(this).attr("id").substr(5, $(this).attr("id").length);
            }
        });

        if (id != "") {
            $("#deleteConfirm").modal();
            $("#deleteBtnOK").on("click", function() {
                location.href = "<%=basePath%>deleteNotice/" + id + ".html";
            });
        }
    });

    

     $("#updateBtn").on("click", function() {
        var id = "";
        $(":radio").each(function() {
            if ($(this).is(":checked")) {
                id = $(this).attr("id").substr(5, $(this).attr("id").length);
            }
        });         

        if (id != "") {
			location.href = "<%=basePath%>updateNotice/" + id + ".html";
        }
    });   
     
     function one(id){
  	   
  	  if (id != "") {
  			location.href = "<%=basePath%>updateNotice1/" + id +".html";
         }};
</script>
</body>

</html>