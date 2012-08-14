package model.databasemanage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	public DBManager(){// 생성자에서 드라이버 로딩
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");// 드라이버 로딩
			
		} catch (Exception e) {
			System.out.println("DriverLoading 생성자 에러 " +
					"Class.forName 에러 ");
		}
	}
	// 자바와 db간 커넥션을 return 해주는 메서드
	public Connection getConnection(){
		String url = /*"jdbc:oracle:thin:@oracle.risingsun7.cafe24.com:1521:orcl";*/"jdbc:oracle:thin:@58.233.27.123:1521:orcl";
		String userid = /*"risingsun7";*/"smp";
		String userpw = /*"oracle9789";*/"test";
		Connection conn=null;
		try {
			
			conn = DriverManager.getConnection(url, userid, userpw);
			
		} catch (Exception e) {
			System.out.println("DriverLoading.getConnection() error");
		}
		return conn;
		
	}
}
