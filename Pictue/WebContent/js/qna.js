/*
 *  질문 및 홍보문의 게시판 스크립트
 */

var brd = {};
brd.init = function(){
	$('#qna #btnInsert').on('click', function(){
		var frm = $('#frm_qna')[0];
		var param = $(frm).serialize();
		$('#qnaboard').load('qna_register.jsp', param);
	})
	
	$('#qna #btnsearch').on('click', function(){
		var frm = $('#frm_qna')[0];
		var param = $(frm).serialize();
		$('#qnaboard').load('qna_search.jsp', param);
	})
	
	$('#qna #btnupdate').on('click', function(){
		var frm = $('#frm_qna')[0];
		var param = $(frm).serialize();
		$('#qnaboard').load('qna_modify.jsp', param);
	})
	
}