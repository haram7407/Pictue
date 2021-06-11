<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판 입력</title>
</head>
<body>
<div id = 'coqn_regi'>

<div id = "head">
 <label>제목</label>
 <input type='text' id='title' placeholder="제목을 입력해주세요"/>
<br/>
 
</div>

<br/>

<div id = "center">
      
      <div id = 'Rdoc'>
       <textarea id = 'text'>
        
       </textarea>
      
      </div>
 </div>
 
 <label>첨부파일</label>
		<input type='file' name='attfile' id='attfile' multiple/>
		
		<div id='image_preview'>
			<div id='attzone'></div>
		</div>
 
 <div id = 'btn_zone'>
 <input type='button' id='register' value='작성'/>
 <input type='button' id='search' value='취소'/>
 </div>
 
</div>
</body>
</html>