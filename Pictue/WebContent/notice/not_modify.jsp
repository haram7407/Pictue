<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ad-register</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/notice.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/notice.js'></script>
</head>
<body>
<div id= 'notice_frm'>
	<h1> 공지사항 수정</h1>
	<form name = 'frm_notice' id= 'frm_notice' method = 'post' action=''>
		<label>작성자</label>
		 <input type = 'text' name = 'id' value = '${vo.id }' readOnly/>
		<br/>
		<label>제목</label>
		<input type = 'text' name = 'title' value='${vo.title }'/>
		<br/>
		<textarea name= 'doc'>${vo.doc }</textarea>
		<br/>
		<div id='att_list' >
		<c:forEach var='f' items="${vo.attList}">
			<div  class='file_zone'>
				<img src="./img/${f.sysAtt }"  width='150px' height='180px'/>
				<label  class='del_file_chk'>
					<input type='checkbox' name='delFile' value='${f.sysAtt }'>파일 삭제</label> 
			</div>
		</c:forEach>
		</div>
		
		<label>첨부파일</label>
		<input type= 'file' name = 'attfile' id = 'attfile' multiple/>
		<div id = image_preview>
			<div id = 'attzone'></div>
		</div>
		<div id='btn_zone'>
		<input type = 'button' value = '작성' id = 'btnUpdate'/>
		<input type = 'button' value = '취소' id = 'btnSearch'/>
		</div>
		
		<input type = 'hidden' name = 'nowPage' value = '${param.nowPage }'/>
		<input type = 'hidden' name = 'findStr' value = '${param.findStr }'/>
		<input type='hidden' name='serial' value='${param.serial }'/>
	</form>
</div>

<script>
	not.init();
	imageView('attfile','attzone');
</script>
</body>
</html>