<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup_form</title>
<script src='//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js'></script>

<link rel = 'stylesheet' type = 'text/css' href = './css/user.css'>
</head>
<body>
<div id ='user'>
	<div id="signup_form">
	<h1 id= 'gaib'>PicTue 회원가입</h1>
	
		<form id="signup" name="signup" method="post" action="./SignupServlet">
			<label>id<input		id="id"		name="id"		type="text"		size="10"></label><br>
			<label>pwd<input	id="pwd"	name="pwd"		type="password"	size="10"></label><br>
			<label>이름<input	id="irum"	name="irum" 	type="text"		size="10"></label><br>
			<label>phone<input	id="phone"	name="phone"	type="text"		size="10"></label><br>
			<label>email<input	id="email"	name="email"	type="text"		size="10"></label>
			<output>@</output>
			<select name='host'>
				 <option value='naver.com'>네이버</option>
				 <option value='nate.com'>네이트</option>
				 <option value='daum.com'>다음</option>
				 <option value='gmail.com'>구글</option>
			</select><br/>
			
			<label>주소</label>
			<input type='text' name='post' size='30'>
			<input type='button' name='btnZipCode'  value='우편번호' onclick='funcZip()'/>
			<br/>
			<label></label>
			<input type='text' name='address1' size='50'/>
			<br/>
			<label>상세주소</label>
			<input type='text' name='address2' size='30'/>
			<br/>
			<div id='btnzone'>
			<input id="signup_btn" name="signup_btn" type="submit" value="회원가입" >
	    </div>
		</form>
		
		
	</div>
	</div>
<script>
function funcZip(){
	// 우편번호 검색
	var frm = document.signup;
		new daum.Postcode({
			oncomplete : function(data){
				frm.post.value = data.zonecode;
				frm.address1.value=data.address;
			}
		}).open();
		
}
</script>
</body>
</html>