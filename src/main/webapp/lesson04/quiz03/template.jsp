<%@page import="java.sql.*"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종합문제</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

		<style>
		#warp {height:1000px}
		header {height:100px; background-color:#FF8000;}
		nav {height:60px; background-color:#FF8000;}
		.contents {min-height:500px;}
		footer {height:100px;}
		 a {text-decoration:none; color:white;}
        a:hover {color:white; text-decoration:none;}
        .line {border-color: coral; width:300px; height:250px;}
        .price-font {color:#999}
      
		</style>

</head>
<body>
	<div id="warp">
		<header class="d-flex justify-content-center align-items-center" >
			<jsp:include page="header.jsp"/>
		</header>
			<jsp:include page="menu.jsp"/>
		<div class="contents d-flex flex-wrap justify-content-around">
		
		
			<jsp:include page="contents.jsp" />
		</div>
		<footer class="d-flex justify-content-center align-items-center">
			<jsp:include page="footer.jsp"/>
		</footer>
	
	</div>

</body>
</html>