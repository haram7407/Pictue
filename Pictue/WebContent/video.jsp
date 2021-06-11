<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = './lib/jquery-3.6.0.min.js'></script>
<style>
/* reset 수정하지마세요 */
* {margin: 0;padding: 0; box-sizing: border-box;}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, tbody, tfoot, thead, tr, th, td{margin:0;padding:0;}
h1, h2, h3, h4, h5, h6 {font-weight: 700; font-size: inherit;}
a {color: inherit; text-decoration: inherit;}
img {vertical-align: middle;}
a img {border: none;}
li {list-style: none;}
address, em, i {font-style: normal;}
/* reset 수정하지마세요 */

@font-face {
    font-family: 'MapoFlowerIsland';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoFlowerIslandA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}/*마포꽃섬체- 약간 얇은느낌*/
body{
	background-color:#ccc;
	height:100%;
	overflow:hidden;
}

#pro_video{
	position: relative;
	width: 100%;
	overflow:hidden;
	height: 100%;
}
#video{
	width: 100%;
	opacity: 0.6;
}
#pro_video #txt{
	font-family: 'MapoFlowerIsland';
	position: absolute;
	color: black;
	font-size: 40px;
	width: 100%;
	height: 100%;
	top:0;
	
}

#pro_video #txt:after{
	background-color: #ccc;
	opacity: 0.3;
}
#pro_video #txt .typing-txt{
	display: none;
}
#pro_video #txt .typing{
	position: relative;
	z-index: 2;
	margin-top: 10%;
	text-align: center;
	line-height: 80px;
	font-weight: bold;
	font-style: italic;
}

#pro_video #txt .typing ul li{
	opacity: 0.2;
}

#pro_video #txt #btnSkip{
	font-size: 20px;
	position: absolute;
	z-index: 1;
	bottom: 15%;
	left: 48%;
}

</style>
</head>
<body>
<%
session.setAttribute("video","yes");
%>

<div id = 'pro_video'>
 		<video id="video" controls=controls autoplay="autoplay" muted="muted">
 		<source src = './video/intro.mp4' type="video/mp4"/>
 		</video>
 		<div id = 'txt'>
	 		<div class="typing-txt"> 
				  	<ul>
				   	 	<li>Appreciate, Draw, Update And Communicate</li>
				    	<li>Your Own Artism</li>
				    	<li>PicTue</li>
					</ul>
	
			</div> 
			<div class="typing">
  				 <ul>
	     			 <li></li>
	     			 <li></li>
	     			 <li></li>
 				 </ul>
	 		</div>
 			<a id = 'btnSkip' href ='#'>Skip</a>
 		</div>
 		
 </div>
 
 <script>
 $(function(){
	 var typingBool = false; 
	 var typingIdx=0; 
	 var liIndex = 0;
	 var liLength = $(".typing-txt>ul>li").length;

	 // 타이핑될 텍스트를 가져온다 
	 var typingTxt = $(".typing-txt>ul>li").eq(liIndex).text(); 
	 typingTxt=typingTxt.split(""); // 한글자씩 자른다. 
	 if(typingBool==false){ // 타이핑이 진행되지 않았다면 
	     typingBool=true; 
	     var tyInt = setInterval(typing,200); // 반복동작 
	 } 
	      
	 function typing(){ 
	   $(".typing ul li").removeClass("on");
	    $(".typing ul li").eq(liIndex).addClass("on");
	   if(typingIdx<typingTxt.length){ // 타이핑될 텍스트 길이만큼 반복
	      $(".typing ul li").eq(liIndex).append(typingTxt[typingIdx]); // 한글자씩 이어준다.
	      $(".typing ul li").animate({opacity:'1'}, 20000);
	      typingIdx++; 
	    } else{ if(liIndex<liLength-1){
	      //다음문장으로  가기위해 인덱스를 1증가
	        liIndex++; 
	      //다음문장을 타이핑하기위한 셋팅
	         typingIdx=0;
	         typingBool = false; 
	         typingTxt = $(".typing-txt>ul>li").eq(liIndex).text(); 
	        
	      //다음문장 타이핑전 1초 쉰다
	          clearInterval(tyInt);
	           //타이핑종료
	      
	          setTimeout(function(){
	            //1초후에 다시 타이핑 반복 시작
	            tyInt = setInterval(typing,200);
	          },1500);
	         } else if(liIndex==liLength-1){
	           
	          //마지막 문장까지 써지면 반복종료
	            clearInterval(tyInt);
	         }
	     }
	 } 

	 
	 
 })
 
 
 
		$("#btnSkip").click(function(){
			$('#video').get(0).pause();
			location.href = "./index.jsp";
		});
 </script>
</body>
</html>