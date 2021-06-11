<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>커뮤 내용</title>
</head>
<body>
<div id = "coqn_view">

<div id = "head">
  <label>작성일</label>
<br/>

<div id = 'headSub'>
  <label>title</label>
  <label>작성자</label>
  <label>조회수</label>
 </div>
 
</div>

<br/>

<div id = "center">
      <div id = 'photo'>
       사진 들어올곳
      
      </div>
      
      <div id = 'Vdoc'>
       내용 들어올곳
      
        
      </div>
 </div>
 <div id = 'btn_zone'>
 <input type='button' id='update' value='수정'/>
 <input type='button' id='delete' value='삭제'/>
 <input type='button' id='search' value='닫기'/>
 </div>
 
<div id = "repl">
  댓글폼이 들어올곳
</div>
</div>
</body>
</html>