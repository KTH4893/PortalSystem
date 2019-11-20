<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<link rel="stylesheet" href="/resources/css/index.css">
</head>
<body>
	<div id="index">
		<div id="index-box">
			<div id="index-box-box1">
				<span class="text1">학사 정보 시스템</span>
				<span class="text2">University Information System</span>
			</div>
			<div id="index-box-box2" >
				<div class="textbox">
					<span class="text3">LOGIN</span>
				</div>
				<form action="#" method="post">
				<div id="login">
					<table id="login-box" style="color: white;">
						<tr>
							<td class="normal-text">아이디(학번)</td>
							<td><input type="text"></td>
							<td rowspan="2"><input type="submit" value="로그인"></td>
						</tr>
						<tr>
							<td class="normal-text">포털비밀번호</td>
							<td><input type="password"></td>
						</tr>
						<tr>
							<td colspan="3">
								<a href="#">아이디 / 비밀번호 찾기</a>
							</td>
						</tr>
					</table>
				</div>
				</form>
				<div id="btn-box">
					<div class="btns-box"><button class="btns" onclick="location.href='#'">버튼2</button></div>
					<div class="btns-box"><button class="btns" onclick="location.href='#'">버튼1</button></div>
					<div class="btns-box"><button class="btns" onclick="location.href='#'">버튼4</button></div>
					<div class="btns-box"><button class="btns" onclick="location.href='#'">버튼3</button></div>
				</div>
			</div>
		</div>
	</div>
	
	
	<script>
		$(document).ready(function(){
			// input css변경하기
			$('input[type="text"],input[type="password"]').focus(function(){
				$(this).css('backgroundColor','#e0e0e0');
			});
			$('input[type="text"],input[type="password"]').blur(function(){
				$(this).css('backgroundColor','white');
			});	
		});
	</script>
</body>
</html>