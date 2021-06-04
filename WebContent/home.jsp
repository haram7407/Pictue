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
	
	//request.setAttribute("main", main);
%>


	<div id = 'border'>
        	<div id = 'notice'> 공지 : notice menu</div>
            <div id = 'art'>
            	미술품 : art menu
            </div>
    </div>
</body>
</html>