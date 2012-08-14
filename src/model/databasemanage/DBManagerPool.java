package model.databasemanage;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public final class DBManagerPool {

	private static DataSource ds;
	
	private DBManagerPool() {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			ds = (DataSource)envCtx.lookup("jdbc/smp");
		} catch (NamingException e) {
			System.out.println("DBManagerPool() error : "+e.getMessage());
		}
	}

	private static final class DBManagerPoolHoler{
		static final DBManagerPool dbManagerPool = new DBManagerPool();
	}

	public static DBManagerPool getInstance(){
		return DBManagerPoolHoler.dbManagerPool;
	}
	public static DataSource getDataSource(){
		return ds;
	}
}
/* 이 싱글톤은 멀티스레드에서도 여러개의 객체가 생기지 않는 패턴
 * final 키워드를 사용하여 이 클래스로부터 상속이 불가능하도록 하기.

public final class Singleton {
   // static inner class (여기도 final 키워드 사용) 를 사용하여 Singleton 클래스의 객체를 생성함
   private static final class SingletonHolder {
      // 역시 이 내부에서도 static final 키워드 사용
      static final Singleton singleton = new Singleton();
    }

   private Singleton() {}

   public static Singleton getInstance() {
      return SingletonHolder.singleton;
    }
 }*/