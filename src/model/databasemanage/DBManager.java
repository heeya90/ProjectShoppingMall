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
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String userid = "a";
		String userpw = "a";
		Connection conn=null;
		try {
			
			conn = DriverManager.getConnection(url, userid, userpw);
			
		} catch (Exception e) {
			System.out.println("DriverLoading.getConnection() error");
		}
		return conn;
		
	}
}
