/**
 * 소개 자바스크립트
 */

	var intro = {};
	intro.init = function(){}
	intro.menu = function(menu){
		switch(menu){
		case 'warn' :
		$('#intro_center').load('./intro/intro_warn.jsp');
		break;
		
		case 'site' :
		$('#intro_center').load('./intro/intro_site.jsp');
		break;
		}
	}