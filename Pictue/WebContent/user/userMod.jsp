<%@page import="signup.SignupVo"%>
<%@page import="signup.SignupDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src='//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js'></script>
<script src='./js/User.js'></script>
<link rel = 'stylesheet' type = 'text/css' href = './css/user.css'>
</head>
<body>
	<%
	Object  obg =  session.getAttribute("id");
	String id = String.valueOf(obg);
	SignupDao dao = new SignupDao();
	
	SignupVo vo = dao.SignupSelect(id);
	
	%>
	<h1>회원 정보 수정</h1>
	<div id="signup_form">
		<form id="Modify" name="Modify" method="post" action="./UpdateServelet">
			<label>id<input		id="id"		name="id"		type="text"		size="10" value='<%=vo.getId() %>' readonly></label><br>
			<label>pwd<input	id="pwd"	name="pwd"		type="text"		size="10" value='<%=vo.getPwd() %>' ></label><br>
			<label>irum<input	id="irum"	name="irum" 	type="text"		size="10" value='<%=vo.getIrum() %>' ></label><br>
			<label>phone<input	id="phone"	name="phone"	type="text"		size="10" value='<%=vo.getPhone() %>' ></label><br>
			<label>email<input	id="email"	name="email"	type="text"		size="10" value='<%=vo.getEmail() %>' ></label>
			<output>@</output>
			<input				id="host"	name="host"		type="text"		size="10" value='<%= vo.getHost() %>' >
			<br/>
			<label>주소</label>
			<input type='text' name='post' value='<%=vo.getPost() %>' readonly>
			<input type='button' name='btnZipCode'  value='우편번호' onclick='funcZip()'/>
			
			<br/>
			<label></label>
			<input type='text' name='address1' size='50' value='<%=vo.getAddress1() %>' readonly>
			<br/>
			<label>상세주소</label>
			<input type='text' name='address2' size='30' value='<%=vo.getAddress2() %>' readonly>
			<br/>
			
			<input id="signup_btn" name="signup_btn" type="submit" value="수정" >
		</form>
	</div>
	
<script>User.init();</script>
<script>
function funcZip(){
	// 우편번호 검색
	var frm = document.Modify;
		new daum.Postcode({
			oncomplete : function(data){
				frm.post.value = data.zonecode;
				frm.address1.value = data.address;
			}
		}).open();
		
}
</script>
</body>
</html>