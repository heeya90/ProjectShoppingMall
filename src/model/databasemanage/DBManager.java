package model.databasemanage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	public DBManager(){
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		} catch (Exception e) {
			System.out.println("DriverLoading 생성자 에러 " +
					"Class.forName 에러 ");
		}
	}
	
	public Connection getConnection(){
		String url = "jdbc:Oracle:thin:@58.233.27.123:1521:orcl";
		String userid = "smp";
		String userpw = "test";
		Connection conn=null;
		try {
			
			conn = DriverManager.getConnection(url, userid, userpw);
			System.out.println("컨넥션 생성 완료");
			
		} catch (Exception e) {
			System.out.println("DriverLoading getConnection() error");
		}
		return conn;
		
	}
}
