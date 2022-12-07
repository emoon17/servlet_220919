package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz03")
public class UrlMappingQuiz03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("기사 입력시간 : yyyy/MM/dd HH:mm:ss");
		
		out.println("<html><head><title>고양이</title></head><body>");
		out.println("<h1>[단독] 고양이가 야옹해</h1> ");
		out.println(sdf.format(now) + "<br> <hr> <div>끝</div>");
		out.println("</body></html>");
		
		
		
		
		
	}
	
	

}
