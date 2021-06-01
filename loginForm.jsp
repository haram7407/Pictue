<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login / Sign Up</title>
<link rel = 'stylesheet' type = 'text/css' href= './css/loginForm.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
</head>
<body>
<div id='LoginFrm'>
	<h1>Login</h1>
	<form name = 'frmLogin' id = 'frmLogin'>
		<label>	ID 
			<input type = 'text' id= 'mid' name = 'mid'/>
		</label>
		<br/>
		<label>	Password 
			<input type = 'text' id= 'pwd' name = 'pwd'/>
		</label>
		<input type = 'button' id = 'btnLogin' value = 'Login'/>
		<div id = 'findSet'>
			<input type = 'button' id = 'btnFindId' value = '아이디찾기'/>
			<input type = 'button' id = 'btnFindpwd' value = '비밀번호찾기'/>
			<input type = 'button' id = 'btnSignup' value = '회원가입'/>
		</div>
	</form>
</div>
</body>
</html>