<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <style>
        
        header {height:70px; font-size:30px;}
        .content {min-height:500px;}
        footer {height:80px;}
        .nav {height:50px;}
        .table{height:800px;}
        
        </style>
        
</head>
<body>
	<div id="wrap" >
		<jsp:include page="header.jsp" />
		<div class="content">
			<jsp:include page="menu.jsp" />
			<div class="table">
				<%
				//String category = request.getParameter("category"); // 카테고리를 눌렀을 때 해당 값이 아니면 null로 나옴
				//리절트 값 맨 위에 두고 전체면 all , 예능이면 예능 페이지를 리절트에 넣어놓기 
				// String all = "content_all.jsp";
			/* 	String one = "content_1.jsp";
				String two = "content_2.jsp";
				String three = "content_3.jsp";
				String four = "content_4.jsp";
				String five = "content_5.jsp";
				
				String result = "";
				
				for (Map<String, String> target : list) {
					if (category.equals("전체")){
						result = all;
					} else if (category.equals("지상파")) {
						result = one;
						
					} else if (category.equals("드라마")) {
						result = two;
					}  else if (category.equals("예능")) {
						result = three;
					} else if (category.equals("영화")) {
						result = four;
					} else if (category.equals("스포츠")) {
						result = five;
					} 
				}  */
				%>
				<jsp:include page="content_all.jsp" />
				<%
				
				%>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>