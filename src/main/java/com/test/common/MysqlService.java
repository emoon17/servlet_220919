package com.test.common; //커먼: 공용패키지

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	//필드 - new해서 다른데서 객체 못만들게 할거임.
	
	private static MysqlService mysqlService = null; //메모리에는 먼저 올라가있고 값은 바꿀 수 있는 상태 
	
	private String url = "jdbc:mysql://localhost:3306/db_0919"; //도메인 뒤에 접속할 데이터베이스명까지 넣는다.
	private String id = "root";
	private String pw = "root";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	// 메소드
	
	//Singleton 패턴 : MysqlService라는 객체가 단 하나만 생성 될 수 있도록 하는 디자인 패턴
	// DB 연결을 여러 객체에서 하지 않도록.
	
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// DB 접속
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			//2. DB연결(connection)
			conn =DriverManager.getConnection(url, id, pw);
			//3. statement : Db와 연결해서 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	// Db 연결 해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	//쿼리 실행 메소드 R / CUD
	//R : select
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	// CUD : insert, update, delete
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
}
