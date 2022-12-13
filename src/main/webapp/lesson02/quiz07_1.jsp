<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz07</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
				List<Map<String, Object>> list = new ArrayList<>();
			    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
			    list.add(map);
			    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
			    list.add(map);
			    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
			    list.add(map);
			    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
			    list.add(map);
			    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
			    list.add(map);
			    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
			    list.add(map);
			    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
			    list.add(map);
			    
			    /* request 꺼내오기 */
			    String search = request.getParameter("search");
			 // 체크하면 String"ture"로 넘어옴. 체크 안하면 null로 나옴(String 아님)
			    String starPointFilter = request.getParameter("starPointFilter"); 
			    boolean exclude = starPointFilter != null;
			    
			    %>
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
			<table class="table text-center">
				<thead>
					<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
					</tr>
				</thead>
				<tbody>
				
			   <% 
			  	/* Iterator<Map<String, Object>> iter = list.iterator();
			  
			  	while (iter.hasNext()) {
			  		Map<String, Object> key = iter.next();
			  		Object name = key.get("name");
			  		Object menu = key.get("menu");
			  		Object point = key.get("point"); */
			  		
			  	for (Map<String, Object> item : list) {
			  		String menu = (String)item.get("menu");//Object로 태어난 애라 Object 관련 메소드 밖에 못 씀 => 다운캐스팅(String) 하면 자식 메소드 사용 가능.
			  		if (menu.contains(search)) {// 다운캐스팅 된 변수로 자식 클라스 contains 사용 
			  			if (exclude && (double)item.get("point") <= 4.0) { // 보여지면 안 되는 조건. 여기 걸리면 continue; // 체크가 되어있고, 4점 이하 제외
			  				continue;
			  			}
				%>
					<tr>
						<td><%= item.get("menu") %></td>
						<td><%= item.get("name") %></td>
						<td><%= item.get("point")%></td>
					</tr>
					<%
			  			
			  		}
			  	}
					%>
				</tbody>
			
			</table>	
	</div>

</body>
</html>