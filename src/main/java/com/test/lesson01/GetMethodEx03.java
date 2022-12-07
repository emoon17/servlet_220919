package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		//request parameter 꺼내기
		String user_Id = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(request.getParameter("age"));
		
		
		PrintWriter out = response.getWriter();
//		out.println("user_id : " + user_Id );
//		out.println("name : " + name );
//		out.println("age : " + age );  -> text/plain일 때 썼음.
		
		// JSON (JabaScript Object Notation) String으로 response 구성하기
		// {"user_id":"eunhye", "name":"은해", "age":27}
		out.print("{\"user_id\":\"" + user_Id +"\", \"name\":\"" + name +"\", \"age\":" + age + "}");
		
		
		
		
	}

}
