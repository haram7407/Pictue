<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>community</title>
 
<script src='./lib/jquery-3.6.0.min.js'></script>
<link rel='stylesheet' type='text/css' href='../css/board.css'>

</head>
<body>
<%

//include 페이지
//String comuD = "comu_search.jsp";
//String comuD="comu_view.jsp";
String comuD="comu_register.jsp";

%>

<div id = "board">

  <div id = "center">
    <div id = "menu_bar"><!-- 메뉴바 -->
      <ul class='ul'>
       <li class='li'>community</li>
       <li class='li'>문의 및 신고</li>
     </ul>
    </div>
  
    <div id = "doc"><!-- 내용 -->
      <jsp:include page="<%= comuD %>"/>
    </div>
  </div>
  
</div>
</body>
</html>