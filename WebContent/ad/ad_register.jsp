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
	<h1>게시물 입력</h1>
	<form name = 'frm_ad' id= 'frm_ad' method = 'post' action=''>
		<label>작성자</label>
		 <input type = 'text' name = 'id'/>
		<br/>
		<label>제목</label>
		<input type = 'text' name = 'subject'/>
		<br/>
		<label>장소</label>
		<input type = 'text' name = 'place'/>
		<br/>
		<label>기간</label>
		<input type = 'text' name = 'term'/>
		<br/>
		<textarea name= 'doc'></textarea>
		<br/>
		<label>암호</label>
		<input type = 'password' name = 'pwd'/>
		<br/>
		<label>배경색</label>
		<input type = 'color' name = 'color'/>
		<br/>
		<label>첨부파일</label>
		<input type= 'file' name = 'attfile' id = 'attfile' multiple/>
		<div id = image_preview>
			<div id = 'attzone'></div>
		</div>
		<div id='btn_zone'>
		<input type = 'button' value = '작성' id = 'btnInsertR'/>
		<input type = 'button' value = '취소' id = 'btnSelect'/>
		</div>
		
		<input type = 'text' name = 'nowPage' value = '${param.nowPage }'/>
		<input type = 'text' name = 'findStr' value = '${param.findStr }'/>
	</form>
</div>

<script>
	ad.init();
	imageView('attfile','attzone');
</script>
</body>
</html>