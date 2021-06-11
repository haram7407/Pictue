/**
 * index(main)
 */
		
var main = {};
main.init = function(){

}	

main.menu = function(menu){
	switch(menu){
		case 'home' :
		$('#ad_banner').load('./mainBanner.jsp');
		$('#content').load('./home.jsp');
		break;
		
		case 'login' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./loginForm.jsp');
		break;
		
		case 'intro' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./intro/intro_site.jsp');
		break;
		
		case 'warn' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./intro/intro_warn.jsp');
		break;
		
		case 'notice' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./notice.do?job=search');
		break;
		
		case 'ad' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./ad.do?job=search');
		break;
		
		case 'anci' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./anci.do?job=search');
		break;
		
		case 'modern' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./modern/mo_search.jsp');
		break;
		
		case 'comu' :
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./comu/comu_search.jsp');
		break;
		
		case 'user':
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./user/userView.jsp');
		break;
		
		case 'userReg':
		$('#ad_banner').load('./subBanner.jsp');
		$('#content').load('./user/userReg.jsp');
		break;
	}
}
