package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// Db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // 실질적인 DB연결 ( 꼭 넣어야 함)
		
		// Db inser 한 행
		String insertQuery = "insert into `sotre` "
				+ "(`name`, `phoneNumber`, `address`, `businessNumber`, `introduce`)"
				+ "values"
				+ "(1, '101-123', '서울시 구로구', '111-222-333', '안녕하세요 누구누구입니다')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		
		// Db select
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `store`";
		try {
			ResultSet resultSet = ms.select(selectQuery); // iterator랑 비슷함 resultSet이
			while (resultSet.next()) { // 결과 행이 있는 동안 수행
				out.print(resultSet.getInt("id"));
				out.print(resultSet.getString("name"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		
		// 결과 출력
		
		// Db연결 해제
		ms.disconnect();
		
	}
	
}
