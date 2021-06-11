<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티내용</title>
<script src='./lib/jquery-3.6.0.min.js'></script>
<link rel='stylesheet' type='text/css' href='../css/cqboard.css'>
</head>
<body>
<div id='cqboard'>
	<h1>community</h1>
	<form name='frm_comu' id='frm_comu' method='post' action=''>
		<input type='button' value='게시글 작성' onclick=""/>
		<div class='find_zone'>
			<input type='text' name='findStr' value=""/>
			<input type='button' value='검색' id='btnFind'/>
			
			<input type='hidden' name='nowPage' value='${(empty param.nowPage)? 1 : param.nowPage}'/>
			<input type='hidden' name='serial'/>
		</div>
	</form>
	
	<div class='title'>
		<span class='serial'>번호</span>
		<span class='id'>작성자</span>
		<span class='title'>제목</span>
		<span class='mdate'>날짜</span>
		<span class='hit'>조회수</span>
	</div>	
	
	
	<div class='items'>
		<!--<c:forEach var='v' items="">-->
			<div class='item' onclick=''>
				<span class='serial'>1</span>
				<span class='id'>a18</span>
				<span class='title'>18181818</span>
				<span class='madte'>2018-1-18</span>
				<span class='hit'>18</span>
			</div>
		<!--</c:forEach>-->
	</div>		

	
	<div id='btn_zone'>
		<input type='button' value='맨첨' onclick='product.move(1)'/>
		<input type='button' value='이전' onclick='product.move(${p.startPage-1})'/>
		
		<c:forEach var='i' begin="${p.startPage }" end="${p.endPage }">
		  <input type='button' value="${i }" onclick='product.move(${i})'/>
		</c:forEach>
		
		<input type='button' value='다음' onclick="product.move(${p.endPage+1})"/>
		<input type='button' value='맨끝' onclick="product.move(${p.totPage})"/>
	</div>
</div>
</body>
</html>