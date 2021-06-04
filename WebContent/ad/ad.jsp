<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>소개페이지</title>
<link rel='stylesheet' type='text/css' href='./css/ad.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
</head>
<body>
<div id = "ad">
  <!-- 서브메뉴바 -->
    <div id = "sub_menu">
      <ul class='sub_menubar'>
       <li class='sub_menulist' onclick="notice.menu('notice')">공지사항</li>
       <li class='sub_menulist' onclick="notice.menu('ad')">행사안내</li>
      </ul>
    </div>
   <!-- 서브메뉴바 -->
    <div id = "ad_center"></div>
</div>
</body>
</html>