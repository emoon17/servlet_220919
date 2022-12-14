<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex02 - 레이아웃(템플릿)</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <style>
        	#wrap {height:1000px}
        	header {height:50px}
        	.bottom {height: 700px}
        	.contents {heigth :90%;}
        	footer {height:10%;}
        </style>
</head>
<body>
	<div id="wrap" class="bg-dark">
		<jsp:include page="header.jsp" /><%-- </jsp:include> --%>
		<div class="bottom bg-warning d-flex">
			<jsp:include page="menu.jsp" />
			<div class="right bg-success col-10">
<%
					String contentName = "content1.jsp";
%>			
				<jsp:include page="<%= contentName %>" />
				<jsp:include page="footer.jsp" />
			</div>
		</div>
	</div>
</body>
</html>