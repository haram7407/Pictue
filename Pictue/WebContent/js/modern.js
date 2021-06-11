/*
 *  현대게시판 스크립트
 */

var brd = {};
brd.init = function(){
	$('#modern #btnInsert').on('click', function(){
		var frm = $('#frm_modern')[0];
		var param = $(frm).serialize();
		$('#modernboard').load('modern_register.jsp', param);
	})
	
	$('#modern #btnsearch').on('click', function(){
		var frm = $('#frm_modern')[0];
		var param = $(frm).serialize();
		$('#modernboard').load('modern_search.jsp', param);
	})
	
	$('#modern #btnupdate').on('click', function(){
		var frm = $('#frm_modern')[0];
		var param = $(frm).serialize();
		$('#modernboard').load('modern_modify.jsp', param);
	})
	
}