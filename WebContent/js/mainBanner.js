/**
 * index용 자바스크립트
 */
	 
	 /* 배너전용 데이터 */
	 var imgAtt = './img/'; // 경로용 변수
 	 var banImg = ['ban1.jpg','ban2.jpg','ban3.jpg','ban4.jpg','ban5.jpg'];
     var banTitle = ["르네상스 거장 라파엘로 展","Feeling blue - Steve Johnson","고대의 건축물, 이집트","새로운 세계의 시각: 그래피티","뒤센 미소(Duchenne Smile)"];
	 var banPlace = ["한국문화예술관","강남예술진흥갤러리","부산역사문화관 이집트관","아트센터 오리엔탈퍼플","갤러리 더 인스파이어드"];
     var color = ['#CD853F','#2F4F4F','#C0BFAC','#C4DBE1','#D0C2B2'];
	 var n;
    $(document).ready(function(){//세션 로드시
		n = 0;
	/* 배너띄우기 */
		$("#imgSrc").attr("src",imgAtt+banImg[n]);
    	$("#banDoc").append(banTitle[n] + "<br/>" + banPlace[n]);
		$("#colored").css('backgroundColor', color[n]);
	
		$("#imgSrc").animate({opacity:'0.6'}, 2000);
		$("#banDoc").animate({opacity:'1'}, 2000);
		$("#colored").animate({opacity:'0.5'}, 2000);
	});
	
 	/* 배너 변경 */
	function mover(n){
	var imgSrc = document.getElementById('imgSrc');
	var banDoc = document.getElementById('banDoc');
	var colored = document.getElementById('colored');
	
	imgSrc.src = imgAtt +banImg[n];
	banDoc.innerHTML = banTitle[n]+"<br/>"+banPlace[n];
	colored.style.backgroundColor = color[n];
	};
    
    /* 로그인시 */