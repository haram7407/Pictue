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
			<div id = 'logo'>
            	<a onclick="main.menu('home')">PicTue</a>
            	<img src = './img/butter.png'/>
            </div>
            
            <% if(session.getAttribute("id") == null) { %>
            <a onclick="main.menu('login')" class = 'login'>Login / Sign Up</a>
            <%} else {
            		if(session.getAttribute("compare").equals("관리자")){ %>
            			<a href ='#' class = 'login' id = 'manager' onclick="main.menu('user')"> [ <%=session.getAttribute("id") %> ] </a>
            			<a href = './logout.jsp' class = 'login'>Logout</a>
            		<%} else { %>
            			<a href ='#' class = 'login' onclick="main.menu('user')"> [ <%=session.getAttribute("id") %> ] </a>
           				<a href = './logout.jsp' class = 'login'>Logout</a>
            <% }
            } %>
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
                            <li><a href = '#' onclick="main.menu('anci')">근현대미술</a></li>
                        </ul>
                    </li>
                    <li class = 'mMenu'><a href = '#' onclick="main.menu('notice')">Notice</a>
                       <ul class = 'sub' id = 'sub3'>
                           <li><a href = '#' onclick="main.menu('notice')">공지사항</a></li>
                           <li><a href = '#' onclick="main.menu('ad')">행사안내</a></li>
                       </ul>
                    </li>
                    <li class = 'mMenu'><a href = '#'>Community</a>
                    </li>
                </ul>
            </nav>
        </header>
</div>
<script>
$('#header').hover(function(){
	$('.sub').css('display','block');
});

$('#header').mouseleave(function(){
	$('.sub').css('display','none');
});

$('#logo').hover(function(){
	$('#logo img').animate({opacity:0.6},1000);
}, function(){
	$('#logo img').animate({opacity:0},1000);
})
</script>
</body>
</html>