<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아 씨발 ㅋㅋ</title>
</head>
<body>
	<B>2차원 배열 성적정리</B> <br>
	
	<%
	
	int[][] score = new int[2][3];
	
	score[0][0] = 89;
	score[0][1] = 90;
	score[0][2] = 91;
	
	int total1 = score[0][0] + score[0][1] + score[0][2];
	int avg1 = total1 / 3;
	
	score[1][0] = 79;
	score[1][1] = 80;
	score[1][2] = 81;
	
	int total2 = score[1][0] + score[1][1] + score[1][2];
	int avg2 = total2 / 3;
	%>
	
	
	
	<%= "1행 1열([0][0])" %> = <%= score[0][0] %> <br>
	<%= "1행 1열([0][1])" %> = <%= score[0][1] %> <br>
	<%= "1행 1열([0][2])" %> = <%= score[0][2] %> <br>
	<%= "학생1 총점 " %> = <%= total1 %>
	<%= "평균" %> = <%= avg1 %><br><Br>≈
	<%= "2행 1열([1][0])" %> = <%= score[1][0] %> <br>
	<%= "2행 1열([1][1])" %> = <%= score[1][1] %> <br>
	<%= "2행 1열([1][2])" %> = <%= score[1][2] %> <br>
	<%= "학생2 총점 " %> = <%= total2 %>
	<%= "평균" %> = <%= avg2 %>
</body>
</html>