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
	
	String user_id = "admin";
	String user_pw = "adminpw";
	
	String login_id = "admin1";
	String login_pw = "adminpw";
	String msg = "";
	
	if ((user_id == login_id) && (user_pw == login_pw)) {
		msg = "OK";
	} else {
		msg = "nope";
	}
	
	%>
	
	
	
	
</body>
</html>