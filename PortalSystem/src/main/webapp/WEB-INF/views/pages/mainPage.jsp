<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<style>
	#main-background-img{border: 0px solid red; width: 89%; height: 950px; float: left; margin-top : 35px;
		background-image: url(/resources/img/header/myLogo_highquality.png);
		background-repeat: no-repeat; background-position: center center; background-size: 1000px 1000px;}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	<div id="main-background-img"></div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>