<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz05</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<form method="post" action="/lesson02/quiz05_1.jsp">
		<div class="container">
			<h1>길이 변환</h1>
				<div class="d-flex">
					<input type="text" name="length" class="form-control col-4">
					<span class="mt-3 ml-2">cm</span>
				</div>
			<label >
				인치
				<input type="checkbox" value="inch" name="inch" class="mt-3 ml-2">
			</label>
			<label >
				야드
				<input type="checkbox" value="yard" name="yard" class="mt-3 ml-2">
			</label>
			<label >
				피트
				<input type="checkbox" value="feet" name="feet" class="mt-3 ml-2">
			</label>
			<label >
				미터
				<input type="checkbox" value="meter" name="meter" class="mt-3">
			</label>
			<div>
				<button type="submit" value="변환하기" class="btn btn-success"> 변환하기</button>
			</div>
		</div>
	
	</form>
</body>
</html>