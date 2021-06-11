<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pictue</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/home.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/menu.js'></script>
</head>
<body>
<%
	//메인 페이지
	String index = "./index.jsp";
	String header = "./header.jsp";
	String mainBanner = "./mainBanner.jsp";
	String footer = "./footer.jsp";
	
	//로그인 페이지
	String login = "./loginForm.jsp";
	
	//로그아웃 페이지
	String logout = "./logout.jsp";
	
	//공지사항
	String notice = "./notice.do?job=search";
	
	//미술품
	String art1 = "./anci.do?job=search";
	String art2 = "./modern/modern_search.jsp";
%>

	<div id = 'home'>
	
        	<div id = 'notice'>
        	<a href ='#' id = 'go1' onclick="main.menu('notice')">더보기</a>
        		 <jsp:include page="<%=notice %>"/>
        	</div>
        	
            <div id = 'art'>
            <a href ='#' id = 'go2' onclick="main.menu('anci')">더보기</a>
            		<jsp:include page="<%=art1 %>"/>
            		
            </div>
    </div>
</body>
</html>