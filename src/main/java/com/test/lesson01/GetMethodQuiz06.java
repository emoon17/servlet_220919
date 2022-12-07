package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		//1. request parameter 꺼내기 (input)
		int number1 = Integer.valueOf(request.getParameter("number1")); 
		int number2 = Integer.valueOf(request.getParameter("number2")); 
		
		// 2. 사칙연산을한다.
//		int addtion = number1 + number2;
//		int subtraction = number1 - number2;
//		int multiplication = number1 * number2;
//		int division = number1 / number2;
		
		// 3. json으로 구성한다.
		PrintWriter out = response.getWriter();
		// { "addtion": 1570,
//	    "subtraction": 1430,
//	    "multiplication": 105000,
//	    "division": 21
//		}
		out.print("{\"addtion\":\"" + (number1 + number2) 
				+  ", \"subtraction\":" +  (number1 - number2) 
				+ ", \"multiplication\":" + (number1 * number2)
				);
		
		
	}
	
}
