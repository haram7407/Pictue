<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login / Sign Up</title>
<link rel = 'stylesheet' type = 'text/css' href= './css/loginForm.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/menu.js'></script>
</head>
<body>
<div id='LoginFrm'>
	<h1>Login</h1>
	<form name = 'frmLogin' id = 'frmLogin'>
		<label>	ID 
			<input type = 'text' id= 'id' name = 'id'/>
		</label>
		<br/>
		<label>	Password 
			<input type = 'text' id= 'pwd' name = 'pwd'/>
		</label>
		<input type = 'submit' id = 'btnLogin' value = 'Login'/>
		<div id = 'findSet'>
			<a href = './user/user_findID.jsp'>아이디찾기</a>
			<a href = './user/user_findPwd.jsp'>비밀번호찾기</a>
			<a href = './user/userReg.jsp'>회원가입</a>
		</div>
	</form>
</div>
</body>
</html>