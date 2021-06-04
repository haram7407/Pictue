<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>소개페이지</title>
<link rel='stylesheet' type='text/css' href='./css/intro.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src='./js/intro.js'></script>
</head>
<body>
<%
	String sitePage="";
	request.setAttribute("intro_center", sitePage);
%>
<div id = "intro">
  <!-- 서브메뉴바 -->
    <div id = "sub_menu">
      <ul class='sub_menubar'>
       <li class='sub_menulist' onclick="intro.menu('site')">사이트 소개</li>
       <li class='sub_menulist' onclick="intro.menu('warn')">유의사항</li>
      </ul>
    </div>
   <!-- 서브메뉴바 -->
    <div id = "intro_center"></div>
</div>
</body>
</html>