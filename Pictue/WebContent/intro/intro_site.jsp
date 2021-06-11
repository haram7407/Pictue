<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>소개페이지</title>
<link rel='stylesheet' type='text/css' href='./css/intro.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
</head>
<body>
<div id = 'intro'>
	<h1>사이트 안내</h1>
	<div id= 'site'>
		<div>
			<h2>PicTue?</h2>
			<br/>
			<img id = 'log1' src ='./img/logo1.png'/>
			<div class = 'intro_doc'>
					<span id ='p1'>PicTue</span>는 <span id ='p2'>'Picture'</span>의 'Pic'과 <span id ='p3'>'Statue'</span>의 'Tue'를 따온 합성어로
					<br/>
					그림 뿐 아니라, 조각품, 건축물, 사진 등의 예술품을 온라인으로 구경하고
					<br/>
					사용자간의 소통이 이루어지는 사이트입니다.
					<br/>
					사이트 관리자가 게시하는 유명한 작품을 즐길 수 있을 뿐 아니라 
					<br/>
					게시되지 않은 작품을 이용자가 직접 등재할 수 있으며,
					<br/>
					아울러 한국 뿐 아닌 다른 나라의 예술작품 또한 둘러볼 수 있습니다.
					<br/>
					그 뿐만 아니라,
					<br/>
					무명의 화가들에게 좋은 홍보 기회를 만들어 주는 사이트가 되고자 노력하고 있습니다.
					<br/>
					현재 진행되고 있는 전시회 등의 행사안내는 공지사항 게시판 내에 게시하고 있습니다.
					<br/>
					행사관련 문의는 sns,혹은 문의게시판을 통해 받고있으니 많은 관심부탁드립니다.
					<br/>
			</div>
			<img id = 'log2' src ='./img/logo2.png'/>
		</div>
		
		<div>
			<h2>Made by AnDaeYeop</h2>
			<br/>
			<div class = 'intro_doc'>
			
					<img id = 'log3' src ='./img/logo3.png'/>
					<div>
					<span id ='p4'>안대엽</span>은 각각 <span id ='p5'>'불빛 안', '큰 대', '빛날 엽'</span>이라는 한자로
					<br/>
					<span id ='p6'>'불빛이 크게 빛난다'</span>는 뜻입니다.
					<br/>
					총 6명의 팀원이 작은 힘을 모아 크게 일을 낸다는 뜻을 가지고 
					<br/>
					부족하지만 서로 보완해가며 앞으로 나아가는 팀입니다.
					<br/>
					</div>
			</div>
		</div>
		
	</div>
<script>
	$(function(){
		$("#log1").animate({opacity:'0.7'}, 1000 , function(){
		$("#p1").animate({opacity:'1'}, 1000 , function(){
			$("#p2").animate({opacity:'1'}, 1000,function(){
				$("#p3").animate({opacity:'1'}, 1000,function(){
					$("#log2").animate({opacity:'1'}, 3000,function(){
						$("#log3").animate({opacity:'1'}, 3000,function(){
					$("#p4").animate({opacity:'1'}, 2000,function(){
						$("#p5").animate({opacity:'1'}, 2000,function(){
							$("#p6").animate({opacity:'1'}, 2000);
						});
					});
				});
			});
		});
		});
	});
});
	})
</script>
</div>
</body>
<script>
$(function() {
	
})
</script>
</html>