package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { 
		// 항상 맨 위에 세팅해야 됌. 
		// 한글 개짐 방지
		response.setCharacterEncoding("utf-8");
		//어떤 방식으로 응답하는지 엑셀, 글자, 어플 등등
		response.setContentType("text/plain"); // 그냥 글자
		// 네트워크 response Header에 text/plain;charset=utf-8로 뜸
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");  
		
		Date now = new Date(); //import 할 때 항 사 utl이 있는거로 import해야 됌.
		out.println(now); //현재시간 나옴. Thu Nov 24 16:45:45 KST(우리나라시간) 2022 date객체
		
		// formatter : Date를 내맘대로 모양 지정
		// 2022-11-24 오후 16:49:30
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));
		
		
	}

}
