/**
 * index용 자바스크립트
 */
	 
	 /* 배너전용 데이터 */
	 var imgAtt = './img/'; // 경로용 변수
 	 var banImg = ['ban1.jpg','ban2.jpg','ban3.jpg','ban4.jpg','ban5.jpg'];
     var banTitle = ["인상파의 신동: 존 에버렛 밀레이","빈센트 반 고흐를 만나다","playful drawings and animations","Spotlight: Hayleigh Longman","동서양의 콜라보 : 일러스트레이터 흑요석"];
	 var banPlace = ["한국문화예술관","강남예술진흥갤러리","YorkshireGallery in England","The longman gallery","갤러리 더 인스파이어드"];
     var color = ['#6e8f1e','#76a3a8','#fffde6','#cacac8','#faf6da'];
	 var str = ["https://artsandculture.google.com/entity/%2Fm%2F0q0f4?hl=ko","https://vangoghseoul.modoo.at/","https://www.helcovell.com/","https://hayleighlongman.com/","https://www.woohnayoung.com/"];
	 var term = ["2021-06-06~2021-06-30","2021-05-03~2021-06-17","2021-04-20~2021-06-20","2021-04-10~2021-07-10","2021-04-10~2021-06-30"];
	 var n;
    $(document).ready(function(){//세션 로드시
		n = 0;
	/* 배너띄우기 */
		$("#imgSrc").attr("src",imgAtt+banImg[n]);
    	$("#banDoc").append(banTitle[n] + "<br/> <h3> " + banPlace[n]+"<br/>"+term[n]+"</h3>");
		$("#colored").css('backgroundColor', color[n]);
	
		$("#imgSrc").animate({opacity:'0.6'}, 2000);
		$("#banDoc").animate({opacity:'1'}, 2000);
		$("#colored").animate({opacity:'0.3'}, 2000);
	});
	
 	/* 배너 변경 */
	function mover(n){
	var imgSrc = document.getElementById('imgSrc');
	var banDoc = document.getElementById('banDoc');
	var colored = document.getElementById('colored');
	//var imgHref = document.getElementById('imgHref');
	
	imgSrc.src = imgAtt +banImg[n];
	banDoc.innerHTML = banTitle[n]+"<br/> <h3> " + banPlace[n]+"<br/>"+term[n]+"</h3>";
	colored.style.backgroundColor = color[n];
	imgHref.href = str[n];
	banDoc.href  = str[n];
	};
    
    /* 로그인시 */