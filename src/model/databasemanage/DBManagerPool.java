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
/* �� �̱����� ��Ƽ�����忡���� �������� ��ü�� ������ �ʴ� ����
 * final Ű���带 ����Ͽ� �� Ŭ�����κ��� ����� �Ұ����ϵ��� �ϱ�.

public final class Singleton {
   // static inner class (���⵵ final Ű���� ���) �� ����Ͽ� Singleton Ŭ������ ��ü�� ������
   private static final class SingletonHolder {
      // ���� �� ���ο����� static final Ű���� ���
      static final Singleton singleton = new Singleton();
    }

   private Singleton() {}

   public static Singleton getInstance() {
      return SingletonHolder.singleton;
    }
 }*/