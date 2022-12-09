<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex03-Post form 태그</title>
</head>
<body>
	<%
	// request로 값 꺼내기 (디버깅 꼭 하기)
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String [] foodArr = request.getParameterValues("food"); // 선택 항목이 여러 개일 때 getParameterValues 메소드 사용
		String fruit = request.getParameter("fruit");
	%>
	
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%=nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%=animal %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td>
				<%
					String result = ""; //null로 하면 null에다가 붙일 수가 없어서 빈공간을 만들어놓음
					if (foodArr != null) {
						for(String food : foodArr) {
							result += food + ",";  // 누적으로 넣어야 덮어쓰기가 안됌
						} 
						// 맨 뒤에 붙은 콤마 제거 : 문장 총 길이 - 1 해서 빼기
						result = result.substring(0, result.length() - 1);
					}// 반환값 저장
						 out.print(result);
				%>
				
				</td>
		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%=fruit %></td>
		</tr>
	</table>
	
	
</body>
</html>