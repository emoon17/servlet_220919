<%@page import="java.sql.*"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//db 연결
MysqlService ms = MysqlService.getInstance();
ms.connect();

// select query
String selcetQuery1 = "select * from `used_goods`";
String selcetQuery2 = "select `id`, `nickname` from `seller`";
ResultSet rs1 = ms.select(selcetQuery1);

while (rs1.next()) {
%>
<article class="line border mt-3 ">
	<img src="<%=rs1.getString("picture")%>" alt="사진"
		onerror="this.src='https://3.bp.blogspot.com/-ZKBbW7TmQD4/U6P_DTbE2MI/AAAAAAAADjg/wdhBRyLv5e8/s1600/noimg.gif'"
		width="250px" class="m-3">
	<div class="font-weight-bold ml-3"><%=rs1.getString("title")%></div>
	<div class="price-font ml-3"><%=rs1.getInt("price")%>원
	</div>
	<%-- <div><%= rs1.getString("sellerId") %></div> --%>
</article>
<%
}
%>
	<%
			//db 해제
			ms.disconnect();
			%>