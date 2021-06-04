<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Header</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/header.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/menu.js'></script>
</head>
<body>
<div id='header'>
	<header>
            <a onclick="main.menu('home')" id = 'logo'>PicTue</a>
            <% if(session.getAttribute("id") == null) { %>
            <a onclick="main.menu('login')" id = 'login'>Login / Sign Up</a>
            <%} else {%>
            <a href ='./user/userView.jsp'> [ <%=session.getAttribute("id") %> ] </a>
            <a href = './logout.jsp' id = 'login'>Logout</a>
            <%} %>
            <nav>
                <ul class = 'menu'>
                    <li class = 'mMenu' ><a href = '#' onclick="main.menu('intro')">Introduction</a>
                       <ul class = 'sub' id = 'sub1'>
                           <li><a href = '#' onclick="main.menu('intro')">사이트 소개</a></li>
                           <li><a href = '#' onclick="main.menu('warn')">유의사항</a></li>
                       </ul>
                    </li>
                    <li class = 'mMenu'><a href = '#' onclick="main.menu('anci')">Art</a>
                        <ul class = 'sub' id = 'sub2'>
                            <li><a href = '#' onclick="main.menu('anci')">고전미술</a></li>
                            <li><a href = '#' onclick="main.menu('modern')">근현대미술</a></li>
                        </ul>
                    </li>
                    <li class = 'mMenu'><a href = '#' onclick="main.menu('notice')">Notice</a>
                       <ul class = 'sub' id = 'sub3'>
                           <li><a href = '#' onclick="main.menu('notice')">공지사항</a></li>
                           <li><a href = '#' onclick="main.menu('ad')">행사안내</a></li>
                       </ul>
                    </li>
                    <li class = 'mMenu'><a href = '#' onclick="main.menu('comu')">Community</a>
                        <ul class = 'sub' id = 'sub4'>
                            <li><a href = '#' onclick="main.menu('comu')">자유게시판</a></li>
                            <li><a href = '#' onclick="main.menu('comu')">홍보및기타문의</a></li>
                        </ul>
                    </li>
                    <li class = 'mMenu'><a href = '#' id = 'auction'>Auction</a></li>
                </ul>
            </nav>
        </header>
</div>
<script>
$('#header').hover(function(){
	$('.sub').css('display','block');
	//$('#header header').animate({height:'200px'}, 300);
});

$('#header').mouseleave(function(){
	$('.sub').css('display','none');
	//$('#header header').animate({height:'50px'}, 300);
});

</script>
</body>
</html>