<%@page import="signup.SignupVo"%>
<%@page import="signup.SignupDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang= 'ko'>
<head>
<meta charset="UTF-8">
<meta name = 'viewport' content = 'width= device-width,initial-scale=1.0'>
<title>Login</title>
</head>
<body>
<div id = 'login'>

 <%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	System.out.println(id);
	System.out.println(pwd);
	
	SignupDao dao = new SignupDao();
	
	SignupVo vo = dao.SignupSelect(id, pwd);
	
	if(vo == null){  %>
		<script>
			alert('아이디나 암호가 잘못되었습니다.');
			location.href = 'index.jsp';
		</script>

<%	}else{
		session.setAttribute("id",vo.getId());
		session.setAttribute("compare",vo.getCompare());
		response.sendRedirect("index.jsp"); 
		//sendRedirect => 화면이 순간적으로 넘어갔다가 다시 돌아옴
	} %>

</div>
</body>
</html>