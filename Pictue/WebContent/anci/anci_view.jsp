<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ad-register</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/anci.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/anci.js'></script>
</head>
<body>
<div id= 'anci_frm'>
	<h1> 고대 미술품 </h1>
	<form name = 'frm_anci' id= 'frm_anci' method = 'post' action=''>
		<label>작성자</label>
		 <input type = 'text' name = 'id' value='${vo.id }'/>
		<br/>
		<label>제목</label>
		<input type = 'text' name = 'title' value='${vo.title }'/>
		<br/>
		<textarea name= 'doc'>${vo.doc }</textarea>
		<br/>
		<div id='image_preview'>
			<c:forEach var='f' items="${vo.attList }">
						<img src="./img/${f.sysAtt }" width='150px' height='180px'/>
			</c:forEach>
		</div>
		<div id='btn_zone'>
			<c:if test = '${vo.id eq sessionScope.id}'>
			<input type = 'button' value = '수정' id = 'btnModify'>
			<input type = 'button' value = '삭제' id = 'btnDelete'>
			</c:if>
			<input type = 'button' value = '목록' id = 'btnSearch'/>
		</div>
		
		<input type = 'hidden' name = 'nowPage' value = '${param.nowPage }'/>
		<input type = 'hidden' name = 'findStr' value = '${param.findStr }'/>
		<input type='hidden' name='serial' value='${param.serial }'/>
	</form>
</div>

<script>
	anci.init();
</script>
</body>
</html>