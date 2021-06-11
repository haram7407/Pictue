/**
 *  회원정보 수정 및 삭제기능 구현
 */

let User = {};
User.init = function(){
	
	$('#userReg_form #btn_modify').on('click', function(){
		var param = $('#update').serialize();
		$('#userReg_form').load('./user/userMod.jsp',param);
	})
	
	$('#userReg_form #btn_cancle').on('click', function(){
		window.history.back();
	})
	
		$('#btn_delete').on('click', function(){
		$('#btn_delete').css({
			'display' : 'block'
		})
	})
}