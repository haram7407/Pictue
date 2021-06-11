package att;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import kr.jobtc.json.DBConn;

public class AttDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public AttDao() {
		this.conn = new DBConn().getConn();
	}
	
	public void  pserial(AttVo vo) {
		String sql = "insert into att( serial, pserial, sysatt, oriatt)"
				+ " values( seq_att.nextval , ? , ?, ? )";	

	
	try {
		
		ps = conn.prepareStatement(sql);

		ps.setInt(1, vo.getPserial());
		ps.setString(2, vo.getSysAtt());
		ps.setString(3, vo.getOriAtt());
		
		ps.executeUpdate();
		
		ps.close();
		conn.close();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
		
	}
}

