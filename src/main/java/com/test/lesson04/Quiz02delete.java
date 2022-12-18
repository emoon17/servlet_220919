package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class Quiz02delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//타입
		response.setContentType("text/plain");
		//리퀘스트
		int id = Integer.valueOf(request.getParameter("id"));
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		// db delete
				String deleteQuery = "delete from `favorite`"
						+ "where `id` = " + id;
				try {
					ms.update(deleteQuery);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
		
		// db해제
		ms.disconnect();
		// 리다이렉트
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}

}
