<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05- Calendar</title>
</head>
<body>
	<%
	   // Singleton 디자인패턴 : 딱 한 번만 만들어서 재활용을 계속 하는 패턴 (클래스 내부에서 한 개로만 관리할 수 있는 패턴)
		Calendar today = Calendar.getInstance(); //getInstance : 한 개의 메소드를 만들어낸다.
		out.println(today); //java.util.GregorianCalendar[time=1670917260186,areFieldsSet=true,areAllFieldsSet=true,len 로 출력
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH : mm : ss");
		out.println(sdf.format(today.getTime()) + "<br>"); //Calendar을 그대로 넘으면 오류, date 객체로 변환 후 출력 해야함
		// getTime으로 객체 변환 완료 후 출력 함.
		
		
		//어제 날짜 
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
		Calendar yesterday = Calendar.getInstance();
		yesterday.add(Calendar.DATE, -1); // Calendar.DATE : 1일단위 : 하루 단위로 하나 뺌 : 어제
		// 한달 전
//		yesterday.add(Calendar.MONTH, -1);
		// 일년 전
		yesterday.add(Calendar.YEAR, -1);
		out.print("어제 날짜 : " + sdf2.format(yesterday.getTime()) + "<br>");
		
		
		// 두 날짜 비교 compareTo return 값 : 1, 0, -1  기준값 (앞) 크면 1 같으면 0 작으면 -1
				
		int result = today.compareTo(yesterday);
		if (result > 0) {
			out.print("today가 더 크다");
		} else if (result == 0 ) {
			out.print("두 날짜는 같다");
				
		} else {
			out.print("today가 작다");
			}
		
		
	%>
</body>
</html>