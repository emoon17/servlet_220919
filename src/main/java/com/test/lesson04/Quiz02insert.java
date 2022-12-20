package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Quiz02insert extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//타입
//		response.setContentType("text/plain"); - 필요없어서 지워두 됌
		
		// request 파라미터
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// db insert
		String insertQuery = "insert into `favorite`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + name + "', '" + address + "');";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// db해제
		ms.disconnect();
		
		// 사용자 목록 페이지에 넘기기 (리다이렉트)
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
