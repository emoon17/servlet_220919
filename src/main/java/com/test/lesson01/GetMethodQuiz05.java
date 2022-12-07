package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/type");
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.valueOf(request.getParameter("number"));
		out.println("<html><head><title>구구단</title></head><body><ul><li>");
		for (int i = 1; i <= 9; i++) {
			out.println(number + " X " + i + " = " + (number * i));
				
		}
		out.println("</li><ul></body></html>");

		
		
		
		
	}

}
