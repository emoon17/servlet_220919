
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01</title>
</head>
<body>
	<!-- Html 주석: 소스보기에서 보인다. -->
	<%-- jsp 주석: 소스보기에서 보이지 않는다. --%>

<!-- 스클립틀릿(Scriptlet) 자바코드 넣으면 된다. -->

<%

	//자바 문법 시작 Scriptlet -메인메소드 느낌
	int sum = 0; 
	for (int i = 0; i <= 10; i++){
		sum += i;
	}
%>
<strong>합계 : </strong>
<!-- 자바 sum을 출력하기 위해 jsp식으로 변수명을 넣어야함(value). -->
<input type="text" value="<%=sum %>">	
<br> 

<%!
// 선언문 - 클래스 느낌

//필드
	private int num = 100;
//메소드
	public String getHelloWorld() {
		return "Hello World!";
}

%>

<%= num + 200 %> <br>
<%= getHelloWorld() %>



</body>
</html>