<%@page import="signup.SignupVo"%>
<%@page import="signup.SignupDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src='./js/User.js'></script>
<link rel = 'stylesheet' type = 'text/css' href = './css/user.css'>
</head>
<body>
	<%
Object  obg =  session.getAttribute("id");
	String id = String.valueOf(obg);
	SignupDao dao = new SignupDao();
	
	SignupVo vo = dao.SignupSelect(id);
	
	System.out.print("id = " + id);
	
	%>
	
	<div id="userReg_form">
		<h1>회원 상세정보</h1>
		<form id="update" name="update" method="post" action="./DeleteServlet">
			<label>id<input		id="id"		name="id"		type="text"		size="10" value='<%=vo.getId() %>' readonly></label><br>
			<label>pwd<input	id="pwd"	name="pwd"		type="text"		size="10" value='<%=vo.getPwd() %>' readonly></label><br>
			<label>irum<input	id="irum"	name="irum" 	type="text"		size="10" value='<%=vo.getIrum() %>' readonly></label><br>
			<label>phone<input	id="phone"	name="phone"	type="text"		size="10" value='<%=vo.getPhone() %>' readonly></label><br>
			<label>email<input	id="email"	name="email"	type="text"		size="10" value='<%=vo.getEmail() %>' readonly></label>
			<output>@</output>
			<input				id="host"	name="host"		type="text"		size="10" value='<%= vo.getHost() %>' readonly>
			<br/>
			<label>주소</label>
			<input type='text' name='post' value='<%=vo.getPost() %>' readonly>
			<br/>
			<label></label>
			<input type='text' name='address1' size='50' value='<%=vo.getAddress1() %>' readonly>
			<br/>
			<label>상세주소</label>
			<input type='text' name='address2' size='40' value='<%=vo.getAddress2() %>' readonly>
			<br/>
			
			<div id="button_zone">
				<input id="btn_modify" name="user_modify" type="button" value="수정">
				<input id="btn_cancle" name="user_cancle" type="button" value="닫기">
				<input id="btn_delete" name="user_delete" type="submit" value="회원탈퇴">
			</div>
		</form>
	</div>
	
	<script>User.init();</script>
</body>
</html>