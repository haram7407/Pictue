<%@page import="att.AttVo"%>
<%@page import="java.util.List"%>
<%@page import="att.AttDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첨부파일</title><style>
*{
margin: 0px;
padding: 0px;
box-sizing: border-box;
vertical-align: top;
list-style: none;
text-decoration: none;
outline: none;
cursor: default;
}

div[id="file_zone"]{
width: 100%;
height: 100px;
border: 1px solid #aaa;
}

div[class="item"]{
width: 80px;
height: 80px;
margin: 8px;
display: inline-block;
position: relative;
}

input[class="button"]{
width: 15px;
height: 15px;
position: absolute;
bottom: 10px;
right: 10px;
color: #ff0000;
}
</style>
</head>
<body>
<script src='../lid/jquery-3.6.0.min.js'></script>
</head>
<body>
<form id="img_form" name="img_form" method="post" action="">
		<img id="file_img" name="file_img" src="http://placehold.it/150x200"><br>
		<input id="file_set" name="file_set" type="file"><br>
		<input id="save" name="save" type="button" value="저장">
	</form>
	
	<script>
	var file_img = document.getElementById('file_img');
	var file_set = document.getElementById('file_set');
	var save = document.getElementById('save');
	
	file_set.onchange = function(e1){
		var file = e1.target.files;
		
		for(var files of file){
			var reader = new FileReader();
			reader.readAsDataURL(files);
			reader.onload = function(e2){
				var img = new Image();
				img.src = e2.target.result;
				
				file_img.setAttribute('src', img.src);
			}
		}
	}
	
	save.onclick = function(){
		var formdata = document.getElementById('img_form');
		var data = new FormData(formdata);
		
		$.ajax({
			type		:	'POST',
			enctype		:	'multipart/form-data',
			url			:	'../AttServlet',
			data		:	data,
			contentType	:	false,
			processData :	false,
			success		:	function(){
				alert('성공');
			}, 
			error		:	function(){
				alert('실패');
			}
		});
	}
	</script>



</body>
</html>