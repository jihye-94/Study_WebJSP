<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
<!--
	TODAY POINT
	서버 자원 활용하기 (WAS 메모리 사용하기)
	
	1. Application 객체 (전역자원) >> 접속하는 모든 사용자가 다룰 수 있는 자원 
	   -사이트에 접속하는 모든 session 이 가지고 노는 객체
	   -ex) 전체 사이트 접속자 수 
	   -application.setAttribute("total",0) >> total모든 사용자가 전역자원
	   -사이트 접속시 total+=1; 
	
		
	2. session 객체 (고유한 자원)   >> 접속하는 브라우져 마다 (sessionID) 고유하게 부여되는 객체(자원)
       -ex) 접속한 사용자 마다
       -session.setAttribute("id",request.getParameter("id"));
       
       -5명 접속
       -식별값:AA1         식별값:BB1       식별값:CC1    ....
       -session객체    ,  session객체   ,  session객체   , session객체  , session객체
        [id,kglim]       [id,hong]        [id,kim]   ......
  -->  

<h3>세션정보</h3>
sessionID : <%= session.getId() %>
<br>
<h3>세션변수(set)</h3>
<%
	String userid = request.getParameter("userid"); 
	session.setAttribute("id", userid);
	//List<String> cartlist = new ArrayList<String>();
	//session.setAttribute("cart", cartlist);
%>

<h3>세션변수(get)</h3>
<%
	String id = (String)session.getAttribute("id"); //다운캐스팅해야함 객체->스트링이라
	out.print("로그인 ID : " + id); 
//위에 ?뒤에 userid=jh 이렇게 값 넣어주면 ID : jh로 나옴 
//원래는 html로 받아야하는디 만들기 시간읎어서 저렇게만..! 
%>

</body>
</html>