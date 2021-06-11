<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pictue</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/index.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/index.js'></script>
</head>
<body>
<%
	//메인 페이지
	String index = "./index.jsp";
	String header = "./header.jsp";
	String footer = "./footer.jsp";
	
	//로그인 페이지
	String login = "./loginForm.jsp";
	
	//로그아웃 페이지
	String logout = "./logout.jsp";
	
	//비디오 페이지
	String video = "./video.jsp";
	
	//홍보시험용
	//session.setAttribute("id","haram");
	//session.setAttribute("compare","관리자");

if (session.getAttribute("video") == null) { %>
	<jsp:include page="<%=video %>"/>
 <%} else{ %>
 
 <!-- 본페이지시작 -->
 <div id = 'index'>
 	
       <jsp:include page="<%=header %>"/>

        <div id = 'mid'>
        	<div id = 'ad_banner'></div>
        	<div id = 'content'></div>
        </div>
        <jsp:include page="<%=footer %>"/>
    </div>
    <a id = "toTop">▲<br/>Top</a>
    
  <%} %>
</body>
</html>