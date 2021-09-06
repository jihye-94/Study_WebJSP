<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/*
클라이언트 데이터 받기 
받은 데이터글 가지고 요청 판단 처리 

JSP 
톰캣 서버 안에서 동작 
톰캣 서버가 내장 객체 
웹에서 사용되는 객체(request, response) >new하지 않음 >생성된 객체를 바로 사용 

1. request : 요청 객체 (클라이언트가 입력한 정보 또는 브라우저 정보 등을 가진 객체)
	서버는 request객체를 통해서 정보를 얻어내고 판단 
		
2. respone : 응답 객체 (서버에서 클라이언트 전달.. write)

HttpServletRequest request = new HttpServletRequest() (개발편의를 위해 이미 생성되어있음)
자동생성 request 이름으로 저장되어있음 
*/

	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String[] hobby = request.getParameterValues("hobby");
%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
</head>
<body>
	클라이언트에게 응답
	<br> ID 값 : <%=uid%>
	<br> 당신의 취미는 :
	<%
		for (String str : hobby) {
	%>
		hobby : <%=str%>
	<br>
	<%}%>
</body>
</html>