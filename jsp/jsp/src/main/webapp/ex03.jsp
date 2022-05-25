a<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>1차원 배열 성적처리</b> <br> <br>
	
	
	
	<%!
	String str[] = {"89","90","91"};
	String str1[] = {"JSP","HTML","java"};
	%>
	
	<%
	for(int i = 0; i < 3; i++) {
		out.println(str1[i] + " = " + str[i]);	
	}
	%>
	
	<%
	
	int int_val = Integer.parseInt(str[0]);
	int int_val1 = Integer.parseInt(str[1]);
	int int_val2 = Integer.parseInt(str[2]);
	
	out.println((int_val + int_val1 + int_val2)/3);
	%>
</body>
</html>