<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ad-register</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/ad.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/ad.js'></script>
</head>
<body>
<div id= 'ad_frm'>
	<h1> 행사 안내 </h1>
	<form name = 'frm_ad' id= 'frm_ad' method = 'post' action=''>
		<label>작성자</label>
		 <input type = 'text' name = 'id' value='${vo.id }' readOnly/>
		<br/>
		<label>제목</label>
		<input type = 'text' name = 'title' value='${vo.title }' readOnly/>
		<br/>
		<label>장소</label>
		<input type = 'text' name = 'place' value='${vo.place }' readOnly/>
		<br/>
		<label>기간</label>
		<input type = 'text' name = 'term' value='${vo.term }' readOnly/>
		<br/>
		<textarea name= 'doc' readOnly>${vo.doc }</textarea>
		<br/>
		<label>배경색</label>
		<input type = 'color' name = 'color' value='${vo.color }' readOnly/>
		<br/>
		<div id='image_preview'>
			<c:forEach var='f' items="${vo.attList }">
						<img src="./img/${f.sysAtt }" width='150px' height='180px'/>
			</c:forEach>
		</div>
		<div id='btn_zone'>
			<%if (session.getAttribute("compare").equals("관리자")) {%>
			<input type = 'button' value = '수정' id = 'btnModify'>
			<input type = 'button' value = '삭제' id = 'btnDelete'>
			<%} %>
			<input type = 'button' value = '목록' id = 'btnSearch'/>
		</div>
		
		<input type = 'hidden' name = 'nowPage' value = '${param.nowPage }'/>
		<input type = 'hidden' name = 'findStr' value = '${param.findStr }'/>
		<input type='hidden' name='serial' value='${param.serial }'/>
	</form>
</div>

<script>
	ad.init();
</script>
</body>
</html>