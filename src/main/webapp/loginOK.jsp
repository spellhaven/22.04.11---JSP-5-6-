<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<% 
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");	
					
		// 원래 아이디 비번이 맞는지 보고 로그인시키는 이 if문은 DB에서 대조하는 거다. 지금은 간단하게 여기 해 보자.
		if(memberId.equals("tiger") && memberPw.equals("12345")) // if(memberId == "tiger")라고 너무 쓰고 싶으나, String 객체라서 equals를 써야 한대.
		{
			session.setAttribute("memberId", memberId); // 앞의 건 "memberId"라는 문자열이고(세션 이름이다) 뒤에 건 memberId라는 Object/객체다 (여기선 속성값으로 쓰인다).
			session.setAttribute("memberPw", memberPw);
			
			out.println("로그인 성공!");
			out.println(memberId + "님 환영합니다.");
		} else {
			out.println("로그인 실패! 아이디 비번을 확인하고 재로그인해주셈.");
		}
	%>
	
	<br>
	<a href = "sessionCheck01.jsp">로그인정보확인(세션확인)</a>
	
</body>
</html>