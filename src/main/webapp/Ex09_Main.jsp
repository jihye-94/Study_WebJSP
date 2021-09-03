<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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