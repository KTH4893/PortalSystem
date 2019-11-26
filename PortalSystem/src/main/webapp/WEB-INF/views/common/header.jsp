<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/header.css">
</head>
<body>
<header>
	<div id="header">
		<div id="logo">
			<div id="logo-box1"></div>
			<div id="logo-box2">
				<p class="logotext" style="color: black;">TheVeloper</p>
				<p class="logotext">통합 정보 시스템</p>
			</div>
		</div>
		<div id="header-box">
			<div id="header-box-box1">
				<ul id="nav1">
					<li><span class="cursors list1">공통</span>
						<ul id="nav1-box1" class="nav-box1">
							<li>· <span class="data1 cursors">시스템공통</span></li>
							<li>· <span class="data1 cursors">시스템관리</span></li>
						</ul>
					</li>
					<li><span class="cursors list1">학사행정</span>
						<ul id="nav1-box2" class="nav-box1">
							<li>· <span class="data1 cursors">학적</span></li>
						</ul>
					</li>
					<li><span class="cursors list1">일반행정</span>
						<ul id="nav1-box3" class="nav-box1">
							<li>· <span class="data1 cursors">시설</span></li>
						</ul>
					</li>
				</ul>
			</div>
			<div id="header-box-box2">
				<div id="login-info">마지막 로그인 : 2019-11-20:16:10[192.168.40.26]</div>
				<div id="info-blank"></div>
				<div id="user-info">학생(전자공학과-졸업생)</div>
				<div class="cursors logout-btn">
				<a href="#" style="color: white;"><i class="fas fa-sign-out-alt"></i></a></div>
			</div>
			<div id="header-box-box3"></div>
			
			
		</div>
	</div>
	<div id="side-nav">
				<div id="side-box">
					<ul id="nav2">
						<li class="Onclick1"><span class="cursors">공통</span></li>
						<li><span class="cursors">관리자메뉴</span></li>
					</ul>
				</div>
				<div id="search-box">
					<form action="#" method="get">
						<div id="search-box-box1">
							<input class="search1" type="text">
						</div>
						<div id="search-box-box2">
						<a id="search-icon" href="#"><i class="fas fa-search fa-2x"></i></a>
						</div>
					</form>
				</div>
				<div id="nav1-list">시스템공통</div>
				<div id="nav3">
					<ul><span>▼ </span>게시판관리
						<li><a href="#">- 공지사항</a></li>
						<li><a href="#">- 문의사항</a></li>
						<li><a href="/toBoard.do">- 자유게시판</a></li>
						<li><a href="#">- 강의리스트</a></li>
					</ul>
					<ul><span>▼ </span>인사관리
						<li><a href="#">- 직원관리</a></li>
						<li><a href="/toProfManage.do">- 교수관리</a></li>
						<li><a href="#">- 학생관리</a></li>
					</ul>
				</div>
		</div>
</header>
<section id="main-background">
	<script>
	$(document).ready(function(){
		$(".nav-box1").hide();
		//상단 네비바 효과
		$("#nav1>li").click(function(){
			$(".nav-box1").hide();
			$(".list1").css('color','#7b7d7e').css('textDecoration','none');
			$(this).children(".list1").css('color','#0a4a9b').css('textDecoration','underline');
			$(this).children(".nav-box1").show();
		});
		$(".nav-box1>li").click(function(){
			
		})
		//공통 - 마이메뉴 네비바
		$("#nav2>li").hover(function(){
			$(this).css('color','white');
		},function(){
		});
		$("#nav2>li").click(function(){
			$("#nav2>li").removeClass('Onclick1');
			
			$(this).addClass('Onclick1');
		})
		//왼쪽 리스트네비바 구현
		$("#nav3>ul>li").hide();
			$("#nav3>ul").hover(function(){
				$(this).css('backgroundColor','#eb9919');
			}, function(){
				$(this).css('backgroundColor','#005698');
			});
			$("#nav3>ul").click(function(){
				$(this).children('li').toggle();
			});
			$("#nav3>ul>li").hover(function(){
				$(this).parent('ul').css('backgroundColor','#798289');
				$(this).css('backgroundColor','black');
			},function(){
				$(this).css('backgroundColor','#3a4450');
		});	
		$("#nav1-list").hide();
//		$("#side-nav").hide();
		
		$(".data1").click(function(){
			var tab2 = $(this).parent().parent().prev().html();
			var tab1 = $(this).html();
			$("#search-box,#nav1-list,#nav3").show();
			$("#nav1-list").html(tab1);
			$("#nav2").children().eq(0).html(tab2);
		});
	});
	</script>

</body>
</html>













