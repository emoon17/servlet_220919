<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<% String type = request.getParameter("type");
	   Date now = new Date();
	   SimpleDateFormat sdf = null;  // 밑에다 넣으면 나중에 result결과를 출력하지 못하기 때문에 위에 null로 먼저 넣어놓기
	   if (type.equals("time")) {
		   sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초입니다.");
		   //String result = sdf.format(now);
	   } else if (type.equals("date")) {
		   sdf = new SimpleDateFormat("현재 날짜는 yyyy년 M월 d일입니다.");
		   //String result = sdf.format(now);
	   }
	   String result = sdf.format(now);
	   	   
	%>
	<div class="container">
		<div class="display-3"><%= result %></div>
	</div>
	
</body>
</html>