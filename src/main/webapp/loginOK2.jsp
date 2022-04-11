<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		// 얘가 login-loginOK 쌍과 다른 점: 
		// 1. response.sendRedirect라는 놈이 생김.
		// 2. 로그아웃할 수 있음.
	
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");	
					
		
		if(memberId.equals("tiger") && memberPw.equals("12345"))
		{
			session.setAttribute("memberId", memberId);
			session.setAttribute("memberPw", memberPw);
			
			response.sendRedirect("sessionCheck01.jsp");
		
		} else {
			response.sendRedirect("login2.jsp");
		
		}
	%>
	
	<br>
	<a href = "sessionCheck01.jsp">로그인정보확인(세션확인)</a>
	
</body>
</html>