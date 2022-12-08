<%@page import="java.util.Scanner"%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>

<%!

// 1부터 n까지 합계 함수

	// input : n(숫자) output: 합계 결과
//	private int N; 필드는 안 만들어도 됌


//	public void setNumber(int N) {
//		this.N = N;
//	}
	
	public int getSum(int n) { // 위에 작성 안하고 get에 int n 넣어서 메소드 하나만 해도 됌.
		int sum = 0;
		for (int i = 0; i <= n; i++) {
			sum += i;
		}
		return sum;
	}
	

	
%>

<h2>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h2><br>

<%  // 2. 점수들의 평균 구하기 
	int[] scores = {80, 90, 100, 95, 80};
	int sum2 = 0;
	for (int i = 0; i < scores.length; i++) {
		sum2 += scores[i];
	}
	double aver = sum2 / (double) scores.length;
	
%>
	<!-- 2번 출력 -->
<h2>평균 점수는 <%= aver %>입니다. </h2><br>

<%	// 3. 아래 채점표로 시험점수가 몇점
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).contains("O")) {
			score += 10;
		}
	}
%>
<h2>채점 결과는 <%= score %>점 입니다.</h2><br>

<%  //4. 나이 
	String birthDay = "20010820";
	String birth = birthDay.substring(0, 4);
	int year = Integer.valueOf(birth);
	int age = 2022 - year + 1;
	//out.print("20010820의 나이는" + age +"입니다." );
%>
<h2>20010820의 나이는 <%= age %> 입니다.</h2>


</body>
</html>