package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		//request parameter(검색어) 꺼내오기
		String search =request.getParameter("search");
		
		//list 꺼내서 단어 <b>태그
		//html 문서로 응답 표현
		
	
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>검색</title></head><body>");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
	
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String sentence = iter.next();
//			검색어가 있을 때 문장 출력			
//			if (sentence.contains(search)) {
//				out.print(sentence +"<br>");
//			}
			// 1) 단어 자체로 split 하기
//			if (sentence.contains(search)) {
//				// 0 index에는 맛집 앞에 있는 문자 1 index에는 맛집 뒤에있는 문장 들어감
//				String[] words = sentence.split(search); // search 그 자체로 자르기
//				out.print(words[0] + "<b>" + search + "</b>" + words[1] +"<br>"); // words[0] 강남역 최고 words[1] 소개 합니다.
//			}
			
			// 2) 단어 replace
			if (sentence.contains(search)) {
				sentence = sentence.replace(search, "<b>" + search + "</b>" ); // replace는 리턴 타입이라 항상 다시 변수에 넣어줘야 한다.
				out.print(sentence + "<br>");
				
			}
			
		}
		
		out.print("</body></html>");
		
		//출력
		
		
		
	}

}
