<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
/*  
[요청에 대한 흐름 제어]
		
1. include
2. forward

공통점 : request 객체를 공유한다 (^^!)
차이점 : 제어권이 들어왔을 때
			include (제어권을 가지고 있다)
            forward (제어권을 넘겨 준다)
            POINT(요청 주소는 [동일]한데 파라메터에 따라 각각[다른 Page 의 내용]을 서비스)
               
			//http://localhost:8090/WebJSP/Ex13_forward_main.jsp?code=B
			//http://localhost:8090/WebJSP/Ex13_forward_main.jsp?code=C
			           
			//클라이언트가 요청한 page >> Ex13_forward_main.jsp
			//실제로 클라이언트가 받는 page정보는 >> A.jsp or B.jsp or C.jsp
			
			//원리 : buffer 주인 > Ex13_forward_main.jsp > forward 만나면 > buffer 비우고
			        비워진 buffer > A.jsp or B.jsp or C.jsp 담아서  서비스	
*/ 

	String code = request.getParameter("code"); 
	String viewUrl = null; 
	
	if(code.equals("A")){
		viewUrl="/forward/A.jsp";
	}else if(code.equals("B")){
		viewUrl="/forward/B.jsp";
	}else if(code.equals("C")){
		viewUrl="/forward/C.jsp";
	}

//이 상태로 실행하면 500 오류나지만은 상단 링크에 ? 뒤에 code=B, code=C, code=A 등 입력하면 정상실행되지!
%>

<jsp:forward page="<%=viewUrl%>"></jsp:forward>
<!-- 여기 아래 ㅇ코드는 의미 없을 무 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그: forward</title>
</head>
<body>
여기있는 코드는
의미가 없음
</body>
</html>