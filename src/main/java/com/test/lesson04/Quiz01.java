package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/Quiz01")
public class Quiz01 extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 응답값 contente type 지정
		response.setContentType("text/plain");
		
		// Db연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// db insert
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "values "
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null)";
		
		
		// db select & 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select `address`, `area`, `type`"
				+ "from `real_estate`"
				+ "order by `id` desc "
				+ "limit 10";
		
		
		
	}

}
