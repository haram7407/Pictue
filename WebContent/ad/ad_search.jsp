<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ad-search</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/ad.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/ad.js'></script>
</head>
<body>
<div id = 'ad_frm'>
	<h2> 행사 안내 </h2>
	<form name = 'frm_ad' id= 'frm_ad' method = 'post' action = ''>
		<input type = 'button' value = '작성' id = 'btnInsert'/>
		
		<div class = 'find_zone'>		
			<input type = 'search' name = 'findStr' value = '${param.findStr }'/>
			<input type = 'button' value = '검색' id= 'btnFind'/>
			<input type = 'text' name = 'nowPage' value = '${(empty param.nowPage)? 1: param.nowPage }'/>
			<input type = 'text' name = 'id'/>
		</div>

	</form>
	<hr/>
	<div>
		<div class = 'table'>
			<span class = 'no'>순번</span>
			<span class = 'title'>제목</span>
			<span class = 'date'>작성일</span>
			<span class = 'place'>전시장</span>
			<span class = 'hit'>조회수</span>
		</div>
		
		<div class = 'items'>
		  <c:forEach var = 'vo' items ='${list}'>
			<div class ='item' id='btnView'>
				<span class = 'no'>${vo.rno }</span>
				<span class = 'title'>${vo.title }( ${vo.attCnt })</span>
				<span class = 'date'>${vo.mDate }</span>
				<span class = 'place'>${vo.id }</span>
				<span class = 'hit'>${vo.hit }</span>
			</div>
		  </c:forEach>
		</div>
	</div>
	
	
	<div id = 'btn_wrap'>
	  <c:if test="${page.startPage>1 }">
		<input type = 'button' value = '처음' onclick = 'ad.move(1)'/>
		<input type = 'button' value = '이전' onclick = 'ad.move(${page.startPage-1})'/>
	  </c:if>
	  
	  <c:forEach var='p' begin='${page.startPage }' end='${page.endPage }'>
	  	<input type = 'button' value='${p }' onclick='ad.move(${p})'/>
	  </c:forEach>
	  
	  <c:if test="${page.endPage<page.totPage }">
		<input type = 'button' value = '다음' onclick = 'ad.move(${page.endPage+1})'/>
		<input type = 'button' value = '맨끝' onclick = 'ad.move(${page.totPage})'/>
	  </c:if>
	</div>
</div>
</body>
</html>