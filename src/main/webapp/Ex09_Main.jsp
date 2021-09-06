<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    SITE MAIN PAGE 상단 내용 
    <hr>
    <!-- include로 같은 내용 가져오기. html은 안되고 jsp만 사용가능 
    
    / : 루트경로(WebApp경로)-->
    <jsp:include page='/commonmodule/sub.jsp'></jsp:include>
	<hr>
	SITE MAIN PAGE 하단 내용
</body>
</html>