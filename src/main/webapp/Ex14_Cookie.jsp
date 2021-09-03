<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
<!--  
	정보(데이터) > 저장 > 장소(where)
	
	클라이언트(개인 로컬 PC) or 서버(웹 서버 or DB 서버)
	보안수위 하, 일시적			보안수위 상, 영속적
	
	정보(데이터, 자료) >> 어디에 저장(보관)
	고민(기준점): 보안 요소 (정보의 중요성) , 소멸(일시적, 영속적))
	
	Client (Local PC : 웹브라우져)
	1. Cookie(메모리 쿠키 , 파일 쿠키 (local 디스크 (txt) 파일로 : 내용 (암호화) > 소멸시기 
	Cookie 변수명 = new Cookie("key", "value");
	   단점 : 크기 제안적 ,사용 조금 불편
	   ㄴ쿠키의 Value값은 자동으로 암호화 되어 저장됨 
	   ㄴ파일쿠키: 소멸시기 지정 가능(pc재부팅해도 정보 남아있을 수 있음) MaxAge() 있으면
	   ㄴ
	2. Local storage (key , value) 형태로 저장   
		ㄴ쿠키보다 더 큰 메모리 저장 가능 
	 
	Server(웹 서버 : WAS)
	1. server memory : session객체 (사이트 접속하는 사용자마다 부여하는 고유한 식별값 ) >>서버 리부팅 , 서버 정지 >> 소멸
	2. server memory : Application객체 (사이트 접속하는 모든 사용자가 공유하는 객체)  >>서버 리부팅 , 서버 정지 >> 소멸
	3. server 영속적(서버 리부팅, 정지) 남아있는 데이터 : 파일.txt >> 관리가 힘들어요
	4. DB server : 보안 , 영속관리가 가능 ........(비용은 추가)

-->

<%
	Cookie mycookie = new Cookie("cname","1004");
   //서버가 필요에 따라서 쿠키객체 생성
   //내사이트 접속한 브라우져 (Client) 전달 >> response
	response.addCookie(mycookie); //쓰기
%>
<a href="Ex15_Cookie_Read.jsp">Cookie Read</a>
</body>
</html>