package model.databasemanage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	public DBManager(){// �����ڿ��� ����̹� �ε�
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");// ����̹� �ε�
			
		} catch (Exception e) {
			System.out.println("DriverLoading ������ ���� " +
					"Class.forName ���� ");
		}
	}
	// �ڹٿ� db�� Ŀ�ؼ��� return ���ִ� �޼���
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
