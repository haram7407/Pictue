<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>현대 게시판</title>
<link rel = 'stylesheet' type='text/css' href='../css/anmo.css'>
</head>
<body>
<%
//include 페이지
String moD="modern_search.jsp";

%>

<div id = "anmo">
   <header>
            <a href = '#' id = 'logo'>PicTue</a>
            <a href = '#' id = 'login'>login</a>
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
  <div id = "header"> <!-- 헤더부분 -->
  
  </div>
  
  <div id = "center">
    <div id = "menu_bar"><!-- 메뉴바 -->
      <ul class='ul'>
       <li class='li'>고대 게시판</li>
       <li class='li'>현대 게시판</li>
     </ul>
    </div>
  
    <div id = "doc"><!-- 내용 -->
      <jsp:include page="<%= moD %>"/>
    </div>
  </div>
  
  <div id = "footer">
  <h2><h3>contact us</h3>
     <h5>qwer1234@gmail.com</h5>
            <br/>
            <h5>phone : 010-0000-0000</h5></h2>
  </div>
</div>
</body>
</html>