<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz05</title>
</head>
<body>
	<%
	int cm = Integer.valueOf(request.getParameter("length"));
	 
	// checkbox, 여러 값 파라미터
	String [] types = request.getParameterValues("type");
	
	%>
	
	<div class="container">
			<h1>길이 변환 결과</h1>
			
			<h3><%= cm %> cm</h3>
			<hr>
			
			<h2>
				<%
					if (types != null) {
						for(String type : types) { // 인치, 야드, 피트, 미터
							if (type.equals("inch")){
								double inch = cm * 0.393701;
								out.print(inch + "in <br>");
							} else if (type.equals("yard")) {
								double yard = cm * 0.0109361;
								out.print(yard + "yd <br>");
							} else if (type.equals("feet")) {
								double feet = cm * 0.0328084;
								out.print(feet + "ft <br>");
							} else if (type.equals("meter")) {
								double meter = cm / 100.0;
								out.print(meter + "m <br>");
							}
						}
					}
				%>	
			
			</h2>
	</div>
</body>
</html>