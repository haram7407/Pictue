/**
 * 행사게시판
 */

var ad = {};
ad.init = function(){
	$('#ad_frm #btnFind').on('click', function(){
		var frm = $('#frm_board')[0];
		frm.nowPage.value = 1;
		var param = $(frm).serialize();
		$('#content').load('./board.do?job=search', param);
	})
	
	$('#ad_frm #btnSearch').on('click', function(){
		var frm = $('#frm_board')[0];
		
		//내용입력폼과 파일 업로드폼이 분리되지 않아서...
		if(frm.serial.value=='') frm.serial.value = 0;
		if(frm.nowPage.value=='') frm.nowPage.value = '1';

		var param = $(frm).serialize();
		$('#content').load('./board.do?job=search', param);
	})
	
	$('#ad_frm #btnInsert').on('click', function(){
		var frm = $('#frm_board')[0];
		var param = $(frm).serialize();
		$('#content').load('./board/register.jsp', param);
	})
	
	$('#ad_frm #btnInsertR').on('click', function(){
		var frm = $('#frm_board')[0];
		
		//내용입력폼과 파일 업로드폼이 분리되지 않아서...
		if(frm.findStr.value=='') frm.findStr.value = ' ';
		if(frm.serial.value=='') frm.serial.value = 0;
		if(frm.nowPage.value=='') frm.nowPage.value = '1';
		
		var data = new FormData(frm);
		
		$.ajax({
			type    : 'POST',
			url     : './boardUpload.do?flag=insert',
			enctype : 'multipart/form-data',
			data    : data,
			contentType : false,
			processData : false,
			success : function(resp){
				$('#content').load('./board.do?job=search');
			}
		});
		
	});
	
	

	$('#ad_frm #btnModify').on('click', function(){
		var frm = $('#frm_board')[0];
		var param = $(frm).serialize();
		$('#content').load('./board.do?job=modify', param);	
	})

	$('#ad_frm #btnUpdate').on('click', function(){
		$('#adPasswordZone').css({
			'display' : 'block'
		})
	})
	$('#ad_frm #btnUpdateR').on('click', function(){
		var frm = $('#frm_board')[0];
		var pwd = $('#adPasswordZone #pwd').val();
		frm.pwd.value = pwd;
	
		//내용입력폼과 파일 업로드폼이 분리되지 않아서...
		if(frm.findStr.value=='') frm.findStr.value = ' ';
		if(frm.serial.value=='') frm.serial.value = 0;
		if(frm.nowPage.value=='') frm.nowPage.value = '1';
		
		var data = new FormData(frm);
		
		$.ajax({
			type    : 'POST',
			url     : './boardUpload.do?flag=update',
			enctype : 'multipart/form-data',
			data    : data,
			contentType : false,
			processData : false,
			success : function(resp){
				$('#adPasswordZone').css({'display' : 'none'});
				$('#content').load('./board.do?job=search');  
			}
		});
	});

		

	/* ------------------------------------------ */
	/*  답글 처리 부분                               */ 
	/* ------------------------------------------ */
	$('#ad_frm #btnRepl').on('click', function(){
		var frm = $('#frm_board')[0];
		var param = $(frm).serialize();
		$('#content').load('./board/repl.jsp', param);
	})
	
	$('#ad_frm #btnReplR').on('click', function(){
		var frm = $('#frm_board')[0];
		
		//내용입력폼과 파일 업로드폼이 분리되지 않아서...
		if(frm.findStr.value=='') frm.findStr.value = ' ';
		if(frm.nowPage.value=='') frm.nowPage.value = '1';
		
		var data = new FormData(frm);
		
		$.ajax({
			type    : 'POST',
			url     : './boardUpload.do?flag=repl',
			enctype : 'multipart/form-data',
			data    : data,
			contentType : false,
			processData : false,
			success : function(resp){
				$('#content').load('./board.do?job=search');
			}
		});
		
	});
	
	
	
	
	
	$('#btnDelete').on('click', function(){
		$('#adPasswordZone').css({
			'display' : 'block'
		})
	})
	
	$('#btnCancel').on('click', function(){
		$('#adPasswordZone').css({
			'display' : 'none'
		})
	})
	
	$('#ad_frm #btnDeleteR').on('click', function(){
		var frm = $('#frm_board')[0];
		var pwd = $('#adPasswordZone #pwd').val();
		frm.pwd.value = pwd;

		var param = $(frm).serialize();
		$('#content').load('./board.do?job=delete', param, function(){
			$('#adPasswordZone').css({
				'display' : 'none'
			})
		});
	})
}

ad.view = function(serial){
	var frm = $('#frm_board')[0];
	frm.serial.value = serial;
	var param = $(frm).serialize();
	$('#content').load('./board.do?job=view', param);
	
}

ad.move = function(nowPage){
	var frm = $('#frm_board')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	
	$('#content').load('./board.do?job=search', param);
	
}



/* 파일 미리보기 --------------------- */
function imageView(fileTag, imageZone){
	var ft = document.getElementById(fileTag);
	var izone = document.getElementById(imageZone);
	
	ft.onchange = function(ev){
		var ele = ev.srcElement;//이벤트가 발생한 테그
		var files = ele.files;
		for(var index in files){
			console.table(files[index]);
		}
		
		for(var file of files){
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(ev2){
				var div = makeItem(izone);
				var img = new Image();
				img.src = ev2.target.result;
				
				div.appendChild(img);
				izone.appendChild(div);
			}
		}
		
	} // end of ft.onchage
	
	// drag & drop 기능 추가
	izone.ondragenter = function(e){
		e.preventDefault();
		e.stopPropagation();
		return false;
	}
	
	izone.ondragover = function(e){
		e.preventDefault();
		e.stopPropagation();
		return false;
	}
	
	izone.ondrop = function(e){
		e.preventDefault();
		e.stopPropagation();

		var dt = e.dataTransfer;
		var files = dt.files;
		
		for(var file of files){
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(ev2){
				var div = makeItem(izone);
				var img = new Image();
				img.src = ev2.target.result;
				
				div.appendChild(img);
				izone.appendChild(div);
			}
		}
	}
}


function makeItem(izone){
	// div 태그 생성 : <div class='item'></div>
	var div = document.createElement('div');
	div.setAttribute('class', 'item');
	
	// 삭제버튼 : <input type='button' value='x' class='del_btn' name='btnDel+ N'/>
	var delBtn = document.createElement('input');
	delBtn.setAttribute('type', 'button');
	delBtn.setAttribute('value', 'X')
	delBtn.setAttribute('class', 'del_btn')
	delBtn.setAttribute('name', 'btnDel')
	
	div.appendChild(delBtn);
	
	delBtn.onclick = function(){
		var p = this.parentNode;
		izone.removeChild(p);
	}
	
	
	return div;
}
