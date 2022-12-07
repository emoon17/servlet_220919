package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{

	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		// request parameter 꺼내기
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		//출력하기
		PrintWriter out = response.getWriter();
		// parameter와 map key 비교 하기.
//		Iterator<String> iter = userMap.keySet().iterator();
//		while (iter.hasNext()) {
//			String information = iter.next();
//			String id = userMap.get("id");
//			String pass = userMap.get("password");
//			String name = userMap.get("name");
//			
			if (userMap.get("id").equals("id") == false) {
				out.print("id가 일치하지 않습니다.");
			} else if (!userMap.get("password").equals(password)) {
				out.print("password가 일치하지 않습니다.");
			} else {
				// 모두 일치
				out.print(userMap.get("name") + "님 환영합니다.");
			}
		
		
		
		
	}
}
