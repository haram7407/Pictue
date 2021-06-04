/**
 * index(main)
 */

var main = {};
main.init = function(){

}	

main.menu = function(menu){
	var sitePage = '';
	switch(menu){
		case 'home' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./home.jsp');
		break;
		
		case 'login' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./loginForm.jsp');
		break;
		
		case 'intro' ://
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./intro/intro.jsp');
		sitePage = './intro/intro_site.jsp';
		break;
		
		case 'warn' ://
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./intro/intro.jsp');
		sitePage = './intro/intro_warn.jsp';
		break;
		
		case 'notice' ://
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./intro/intro.jsp');
		sitePage = './intro/intro_site.jsp';
		break;
		
		case 'ad' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./ad/ad_search.jsp');
		break;
		
		case 'anci' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./anci/anci_search.jsp');
		break;
		
		case 'modern' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./modern/modern_search.jsp');
		break;
		
		case 'comu' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./comu/comu_search.jsp');
		break;
		
		case 'qna' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./qna/qna_search.jsp');
		break;
	}
}

$(function(){//옥션창 막기
	$('#auction').click(function(){
	alert('준비중입니다.');
	});
});
