<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04- 제어문 사용</title>
</head>
<body>
	<% 
		// Map을 테이블로 구성하기
		// {"korean"=85, "english"=72, "math"=90, "science"=100 }
		Map<String, Integer> scoreMap = new HashMap<>(); 
		scoreMap.put("korean", 85);
		scoreMap.put("english", 72);
		scoreMap.put("math", 90);
		scoreMap.put("science", 100);
	%>
	
	<table border="1">
	<%
		Set<String> keys = scoreMap.keySet(); // 1.iterator,  2.향상된 for문
		Iterator<String> iter = keys.iterator();
		while (iter.hasNext()) {
			String subject = iter.next();
	%>
		<tr>
			<th><%-- <%= subject %> --%>
			<%/* 과목을 영어로 나타내기*/ 
				if (subject.equals("korean")) {
					out.print("국어");
				} else if (subject.equals("english")) {
					out.print("영어");
				} else if (subject.equals("math")) {
					out.print("수학");
				} else if (subject.equals("science")) {
					out.print("과학");
				}
			%> 
			</th>
			<td><%= scoreMap.get(subject) %></td>
		</tr>
	<%
		} // while의 괄호 닫는 문
	%>
	</table>
	
	
</body>
</html>