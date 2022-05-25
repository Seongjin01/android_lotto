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
	
	// 2차원 점수배열 선언과 생성 및 초기화
	int jumsu[][] = {{89,90,91}, {79,80,81}};
	
	// 학생뼐 총점, 평균 1차원 배열 선언과 생성
	int total[] = {0,0};			//총점
	float average[] = new float[2]; //평균
	
	// 성적처리 - 학생별 총점, 평균 계산
	for(int jul = 0; jul < jumsu.length; jul++) {
		
		for(int kan = 0; kan < jumsu[jul].length; kan++) { // 모든 행을 탐색
			total[jul] += jumsu[jul][kan]; // 해당 줄의 모든 칸에 들어있는 값을 누적, 합계
			//total[0] = 0번 줄(학생1)의 총점, total[1]=1번 줄(학생2)의 총점
		}
		average[jul] = total[jul] / 3;
	}
	//성적처리 결과출력 - 학생별 점수, 총점, 평균 => 화면표시
	for (int jul = 0; jul < 2; jul++) {
		for(int kan = 0; kan < 3; kan++) {
			%>
			<%=jumsu[jul][kan] %>&nbsp;&nbsp;&nbsp;
			<!-- 배열에 들어있는 데이터를 화면에 출력, 2번째 for문에 따른 반복 -->
			<% 
		}
		%>
		<%=total[jul] %>&nbsp;&nbsp;&nbsp;<%=average[jul] %><br>
		<!-- total 배열에 들어있는 각 줄의 총점, average 배열에 들어있는 각 줄의 평 -->
		<%
	}
	
	%>
	
	
			
	
	
	
	
	
	
	
	



</body>
</html>