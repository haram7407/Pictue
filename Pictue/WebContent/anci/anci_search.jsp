<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ad-search</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/anci.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/anci.js'></script>
</head>
<body>
<div id = 'anci_frm'>
	<h1> 고대 미술품 </h1>
	<form name = 'frm_anci' id= 'frm_anci' method = 'post' action = ''>
		<input type = 'button' value = '작성' id = 'btnInsert'/>

		
		<div class = 'find_zone'>		
			<input type = 'search' name = 'findStr' value = '${param.findStr }'/>
			<input type = 'button' value = '검색' id= 'btnFind'/>
			<input type='hidden' name='nowPage' value='${param.nowPage }'/>		
			<input type='hidden' name='serial' value='${param.serial }'/>		
		</div>

	</form>
	<div>
		<div class = 'table'>
			<span class = 'no'>순번</span>
			<span class = 'title'>제목</span>
			<span class = 'date'>작성일</span>
			<span class = 'id'>작성자</span>
			<span class = 'hit'>조회수</span>
		</div>
		
		<div class = 'items'>
		  <c:forEach var = 'vo' items ='${list}'>
			<div class ='item' onclick = 'anci.view(${vo.serial})'>
				<span class = 'no'>${vo.rno }</span>
				<span class = 'title'>${vo.title }</span>
				<span class = 'date'>${vo.mDate }</span>
				<span class = 'id'>${vo.id }</span>
				<span class = 'hit'>${vo.hit }</span>
				<c:forEach var='f' items="${vo.attList }">
						<img src="./img/${f.sysAtt }" width='150px' height='180px'/>
				</c:forEach>
			</div>
		  </c:forEach>
		</div>
	</div>
	
	
	<div id = 'btn_wrap'>
	  <c:if test="${page.startPage>1 }">
		<input type = 'button' value = '처음' onclick = 'anci.move(1)'/>
		<input type = 'button' value = '이전' onclick = 'anci.move(${page.startPage-1})'/>
	  </c:if>
	  
	  <c:forEach var='p' begin='${page.startPage }' end='${page.endPage }'>
	  	<input type = 'button' value='${p }' onclick='anci.move(${p})'/>
	  </c:forEach>
	  
	  <c:if test="${page.endPage<page.totPage }">
		<input type = 'button' value = '다음' onclick = 'anci.move(${page.endPage+1})'/>
		<input type = 'button' value = '맨끝' onclick = 'anci.move(${page.totPage})'/>
	  </c:if>
	</div>
</div>
<script>
	anci.init();
</script>
</body>
</html>