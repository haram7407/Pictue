<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pictue</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/index.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
</head>
<body>
 <div id = 'index'>
        <header>
            <a href = '#' id = 'logo'>PicTue</a>
            <a href = '#' id = 'login'>Login / Sign Up</a>
            <nav>
                <ul class = 'menu'>
                    <li class = 'mMenu'><a href = '#'>introduction</a>
                        <div id = 'sub1' class = 'sub'>
                            <ul>
                                <li><a href = '#'>About Team</a></li>
                                <li><a href = '#'>About Site</a></li>
                            </ul>
                        </div> 
                    </li>
                    <li class = 'mMenu'><a href = '#'>art</a>
                        <div id = 'sub2' class = 'sub'>
                            <ul>
                                <li><a href = '#'>고전미술</a>
                                    <div id = 'art1'>
                                        <ul>
                                            <li><a href = '#'>1세기</a></li>
                                            <li><a href = '#'>2세기</a></li>
                                            <li><a href = '#'>3세기</a></li>
                                            <li><a href = '#'>4세기</a></li>
                                            <li><a href = '#'>5세기</a></li>
                                            <li><a href = '#'>6세기</a></li>
                                            <li><a href = '#'>7세기</a></li>
                                            <li><a href = '#'>8세기</a></li>
                                            <li><a href = '#'>9세기</a></li>
                                            <li><a href = '#'>10세기</a></li>
                                            <li><a href = '#'>11세기</a></li>
                                            <li><a href = '#'>12세기</a></li>
                                            <li><a href = '#'>13세기</a></li>
                                            <li><a href = '#'>14세기</a></li>
                                            <li><a href = '#'>15세기</a></li>
                                            <li><a href = '#'>16세기</a></li>
                                            <li><a href = '#'>17세기</a></li>
                                            <li><a href = '#'>18세기</a></li>
                                            <li><a href = '#'>19세기</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href = '#'>근현대미술</a>
                                    <div id = 'art2'>
                                        <ul>
                                            <li><a href = '#'>18세기</a></li>
                                            <li><a href = '#'>19세기</a></li>
                                            <li><a href = '#'>20세기</a></li>
                                            <li><a href = '#'>21세기</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class = 'mMenu'><a href = '#'>Notice</a>
                        <div id = 'sub3' class = 'sub'>
                            <ul>
                                <li><a href = '#'>공지사항</a></li>
                                <li><a href = '#'>행사안내</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class = 'mMenu'><a href = '#'>community</a>
                        <div id= 'sub4' class = 'sub'>
                            <ul>
                                <li><a href = '#'>자유게시판</a></li>
                                <li><a href = '#'>후기게시판</a></li>
                                <li><a href = '#'>토론게시판</a></li>
                                <li><a href = '#'>문의및신고</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class = 'mMenu'><a href = '#'>Promotion</a></li>
                </ul>
            </nav>
        </header>
        <!-- 메뉴 끝-->

        <div id = 'mid'>
        	<div id = 'event'>
        		<div id = 'banner'>
        			<div class = 'container'>
	        			<div class = 'inner'>
	        				<img src ='./img/ban1.jpg'/>
	        			</div>
	        			
	        			<div class = 'inner'>
	        				<img src = './img/ban2.jpg'/>
	        			</div>
	        			
	        			<div class = 'inner'>
	        				<img src = './img/ban3.jpg'/>
	        			</div>
	        			
	        			<div class = 'inner'>
	        				<img src = './img/ban4.jpg'/>
	        			</div>
	        			
	        			<div class = 'inner'>
	        				<img src = './img/ban5.jpg'/>
	        			</div>
        			</div>
        		</div>
        		<input type = 'button' id = 'btnBanLft' value = '<'/>
        		<input type = 'button' id = 'btnBan1' value = '1'/>
        		<input type = 'button' id = 'btnBan2' value = '2'/>
        		<input type = 'button' id = 'btnBan3' value = '3'/>
        		<input type = 'button' id = 'btnBan4' value = '4'/>
        		<input type = 'button' id = 'btnBan5' value = '5'/>
        		<input type = 'button' id = 'btnBanRight' vlaue = '>'/>
        	</div>
            <div id = 'notice'> 공지 : notice menu</div>
            <div id = 'art'>
            	미술품 : art menu
            </div>
        </div>
        <footer>
            <h3>contact us</h3>
            <h5>qwer1234@gmail.com</h5>
            <br/>
            <h5>phone : 010-0000-0000</h5>
        </footer>
    </div>
</body>
</html>