<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 확인 01</title>
</head>
<body>
	<h2>로그인 정보 확인</h2>
	<hr>
	<% 
		// 헐. 나 set만 써 보다가 get 처음 써 본다.
		
		String s_id = (String)session.getAttribute("memberId");
		// (String)이라고 다운캐스팅 형변환 안 하면 캐낫 컨버트 프롬 오브젝트 투 스트링! 한다.
		
		String s_pw = (String)session.getAttribute("memberPw");
		
		out.print("로그인하신 아이디: " + s_id + "<br>");
		out.print("로그인하신 비밀번호: " + s_pw + "<br>");
	
	%>

	<br><br>
	<a href = "logout2.jsp">로그아웃</a>
	
</body>
</html>