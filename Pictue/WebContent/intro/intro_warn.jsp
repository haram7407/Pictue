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
    	<h1>유의사항</h1>
    	<br/>
    	<div id = 'intro_num'>
    		<a href = '#등재'>등재의 정의</a>
    		<br/>
    		<a href = '#등재기준'>등재기준의 정의</a>
    		<br/>
    		<a href = '#저작권'>저작권법의 정의</a>
    		<br/>
    		<a href = '#접근제한'>접근제한</a>
    	</div>
    	<br/>
    	<h2 id = '등재'>등재의 정의</h2>
    	<br/>
		<div class = 'intro_doc'>
			등재란, Pictue의 기본방침의 정의에 부합하는 문서 및 미술작품을 사이트에 등록하는 것을 의미합니다.
		</div>
		<br/>
		
		<h2 id = '등재기준'>등재 기준의 정의</h2>
    	<div class = 'intro_doc'>
    		등재 기준이란, 하나의 문서에서 중점적으로 서술하는 대상을 일정의 수치를 통해 등재 가능 여부를 나누는 기준을 의미합니다.
			다음과 같은 등재 기준 미달 문서는 삭제됩니다.
			<ol>
				<li>1. 저작권법에 준하지않은 문서</li>
				<li>2. 같은 게시글을 연달아 작성을 한 문서</li>
				<li>3. 게시판의 목적을 벗어난 문서</li>
			</ol>
    	</div>
    	<h2 id = '저작권'>저작권법의 정의</h2>
    	<div class = 'intro_doc'>
    		파일 문서(이하 "이미지")를 업로드할 때는 다음 사항을 준수해야 합니다.
			저작권법상 성명표시권 등 / CCL 등의 자유 배포 라이선스의 '저작자표기' 등에 기반하여, 업로드하는 이미지의 출처 또는 저작자를 반드시 표기하여야 합니다.
			해당 이미지가 적용하고 있는 라이선스를 정확하게 표시해야 합니다.
			별도의 라이선스가 명시되지 않은 이미지/비자유 이미지의 경우 "제한적 이용"에 해당한다.
			퍼블릭 도메인 혹은 자유 배포 라이선스가 없는 저작권이 존재하는 이미지를 업로드하는 것은 업로더가 법적 책임을 질 수 있습니다.
			<a href = 'https://www.law.go.kr/%EB%B2%95%EB%A0%B9/%EC%A0%80%EC%9E%91%EA%B6%8C%EB%B2%95' id = 'link'>(자세한 내용은 저작권법 참조)</a>
    	</div>
    	<br/>
    	
    	<h2 id = '접근제한'>접근제한</h2>
    	<div class = 'intro_doc'>
    		접근 제한에는 편집권 제한, 작성 제한이 있습니다.
			편집권 제한은 이용자의 편집권 중 일부 또는 전체를 제한하는 조치이며, 그 종류는 아래와 같습니다.
			<ol>
				<li>1. 편집 제한: 문서의 삭제와 이동을 포함하는 모든 편집을 제한</li>
				<li>2. 삭제 제한: 문서의 삭제를 제한</li>
				<li>3. 이동 제한: 문서의 표제어 변경을 제한</li>
			</ol>
    		특정 이용자에 대한 편집권 제한은 사측 관리자 이외에 처리할 수 없습니다.
    		<br/>
    		작성 제한은 이용자의 작성권을 제한하는 조치입니다.
			운영자는 모든 게시판을 작성할수 있으며, 특정 이용자에게는 회원박탈을 함으로 작성을 제한할 수 있습니다.
			이용자들은 공지게시판, 고대미술품게시판, 경매게시판 외에는 작성가능합니다.
    	</div>
</div>
</body>
</html>