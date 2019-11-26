<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/profList.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div id="list-box">
	<div id="list-box-box1"></div>
	<div id="list-box-box2">Professor List</div>	
	<div id="list-box-box3"></div>
	<div id="proftable-box">
	<table id="proftable">
		<tr>
		<th style="width: 4%;">번호</th><th style="width: 10%;">학과</th><th style="width: 6%;">이름</th><th style="width: 15%;">주소</th><th style="width: 15%;">이메일</th><th style="width: 15%;">연락처</th><th style="width: 10%;">등록일</th><th style="width: 4%;">성별</th><th style="width: 8%;">현상태</th>
			<th style="text-align: right; border-left: 2px solid gray;">
				<form action="#" method="get">
				<input type="text" size="8" style="height: 23px;">
					<select style="height: 30px;">
						<option selected>선택</option>
						<option value="이름">이름</option>
						<option value="학과">학과</option>
					</select>
				<input type="submit" class="searchbtn" value="찾기">
				</form>
			</th>
		</tr>
		
		<c:forEach items="${prof }" var="prof" varStatus="i">
		
			<tr>
			<td>${i.count }</td>
			<td>${prof.departDetail }</td>
			<td>${prof.name }</td>
			<td>${prof.addr }</td>
			<td>${prof.email }</td>
			<td>${prof.phone }</td>
			<td>${prof.enrollDate }</td>
			<td>${prof.gender }</td>
			<td>${prof.status }</td>
				<td>
					<button class="tbl-btn" onclick="location.href='#'">정보수정</button>
					<button class="tbl-btn" onclick="location.href='#'">삭제하기</button>
				</td>
			</tr>
		
		
		</c:forEach>
		
		
	</table>
	</div>
	<div id="navi">
		<div id="navi-box1"></div>
		<div id="navi-box2">페이지네비</div>
		<div id="navi-box3" style="padding-top: 20px; padding-left: 40px;"><button class="btn btn-secondary btn-lg btn-block" id="addProf">인원추가하기</button></div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<script>
		$(document).ready(function(){
			$("#addProf").click(function(){
				window.open("/addProfPage.do","_blank","toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=700,width=600,height=800");
			});
			
			
			
			
			
		});
	</script>








</body>
</html>