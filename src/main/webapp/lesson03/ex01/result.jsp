<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01 - 현재시간 (원본페이지)</title>
</head>
<body>
	<!-- 결과페이지, 하나의 페이지 : 페이지를 조각으로 떼겟다 -->
	현재 시간은? <br>
	<%@ include file="date.jsp" %> <!-- 절대경로 : date내용을 해석하지 않은상태로 통째로 가져온 후 원본페이지에서 해석함 -->
	
	
</body>
</html>