package kr.jobtc.json;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * 데이터베이스연결
 * 오라클을 연결하고 최종적으로 Connection객체를 반환하는 역할
 */
public class DBConn {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	String user = "hr";
	String pwd = "1111";
	Connection conn =null;
	
	public Connection getConn() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,pwd);
			}catch(Exception ex) {
				ex.printStackTrace();
			}
		return conn;
	}
	
}
