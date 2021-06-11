<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<title>MainBanner</title>
<link rel = 'stylesheet' type = 'text/css' href = './css/mainBanner.css'>
<script src = './lib/jquery-3.6.0.min.js'></script>
<script src = './js/mainBanner.js'></script>
</head>
<body>
<div id = 'mBanner'>
	<div id = 'event'>
			<div>
				<a href = '#' id = 'banDoc'></a>
			</div>
      		<div id = 'container'>
      		
      			<div id = 'slide'>
      				<a id = 'imgHref' href = '#'>
      					<img id = 'imgSrc'/>
      				</a>
      			</div>
      			
      		</div>
      		<div id = 'mouse_hover'>
      			<input type = 'button' onmouseover='mover(0)'/>
      			<input type = 'button' onmouseover='mover(1)'/>
      			<input type = 'button' onmouseover='mover(2)'/>
      			<input type = 'button' onmouseover='mover(3)'/>
      			<input type = 'button' onmouseover='mover(4)'/>
      		</div>
      		<div id='colored'></div>
      </div>
</div>
</body>
</html>