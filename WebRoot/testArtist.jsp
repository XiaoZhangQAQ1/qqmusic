<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testArtist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  </head>
  
  <body>
    <input type="button" value="test2" id="getContent">
    <input type="button" value="getlist" id="getList">
    <div id="content"></div>
<!--     <script type="text/javascript">
    $("#getContent").click(function(){	
    $.getJSON("testJson",function(date){
		 	$("#content").html(date.list.get(0).aname());
		 //	$("#content").append("<div>studnet name:"+date.list.aname+"</div>");
		 	});		 	
		});
		
		$("#getList").click(function(){
			$.getJSON("testJson!execute",function(data){
				$.each(data.list,function(i,value){
				$("#content").append("<div>第"+(i+1)+"个用户</div>")	
				.append("<div>studnet name:"+value.aname+"</div>");
		 		
				});
			});
		});
    </script> -->
    
    <c:forEach items="${listArtist}" var="listArtist" end="3" > 
    <b>${listArtist.getAname()}</b>  
    </c:forEach>
  
  </body>
  
</html>
