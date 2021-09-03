<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="/Error/CommonError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
예외 발생했을 때 처리하는 페이지 설정해보자! 
ex) 현재 사이트 공사중, 네트워크 장애가 있다 등 

그치만 개발시엔 에러 확인해야하니 사용하지말고
실 서버에 배포, 사용시에는 ㅇㅇ-->
<%
	String data = request.getParameter("name");
	String data2 = data.toLowerCase(); //이럴땐 null을 변환시도했으니 당연오류 
	
%>

전달받은 내용 : <%=data %> 
<!-- 그냥 null로 바꿔서 출력하면되니 노오류 
그리고 나온 화면 링크에서 ?뒤에 name=A하면 화면에 A 출력됨 -->
</body>
</html>