package signup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.jobtc.json.DBConn;

public class SignupDao {
	Connection co;
	PreparedStatement ps;
	ResultSet rs;
	
	public SignupDao() {
		this.co = new DBConn().getConn();	
	}
	
	public int getTotList(String findStr) {
		int totList = 0;
		String sql = " select count(mid) totList from member "
					+" where mid = ?"
					+" or irum like ? "
					+" or phone like ? "
					+" or address like ? ";
		
		try {
			ps = co.prepareStatement(sql);
			ps.setString(1, findStr);
			ps.setString(2, "%" + findStr + "%");
			ps.setString(3, "%" + findStr + "%");
			ps.setString(4, "%" + findStr + "%");
			
			rs= ps.executeQuery();
			if(rs.next()) {
				totList = rs.getInt("totList");
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return totList;
	}

	public List<SignupVo> select(Page page){
		String findStr = page.getFindStr();
		page.setTotList(getTotList(findStr));
		page.compute();
		
		List<SignupVo> list = new ArrayList<SignupVo>();
		String sql = "select * from ("
					+" select rownum rno, m.* from ( "
					+" 		select * from puser "
					+" 		where id = ? "
					+" 		or irum like ? "
					+" 		or phone like ? "
					+" 		or address like ? "
					+" 		order by irum asc "
					+"       )m "
					+" ) "
					+" where rno between ? and ? ";
		try {
			ps = co.prepareStatement(sql);
			ps.setString(1, findStr);
			ps.setString(2, "%" + findStr + "%");
			ps.setString(3, "%" + findStr + "%");
			ps.setString(4, "%" + findStr + "%");
			ps.setInt(5, page.getStartNo());
			ps.setInt(6, page.getEndNo());
			
			rs = ps.executeQuery();
			while(rs.next()) {
				SignupVo vo = new SignupVo();
				vo.setRno(rs.getInt("rno"));
				vo.setId(rs.getString("id"));
				vo.setIrum(rs.getString("irum"));
				vo.setPhone(rs.getString("phone"));
				vo.setEmail(rs.getString("email"));
				vo.setHost(rs.getString("host"));
				
				list.add(vo);
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		return list;
	}
	
	public void SignupInsert(SignupVo vo) {
		try {
			co.setAutoCommit(false);
			
			String sql = "insert into pUser(id, pwd, irum, phone, email, host, post, address1, address2, compare)"
					   + " values(?, ?, ?, ?, ?, ?, ?, ?, ?, '회원')";
			
			ps = co.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getIrum());
			ps.setString(4, vo.getPhone());
			ps.setString(5, vo.getEmail());
			ps.setString(6, vo.getHost());
			ps.setString(7, vo.getPost());
			ps.setString(8, vo.getAddress1());
			ps.setString(9, vo.getAddress2());
			
			int rs = ps.executeUpdate();
			if(rs > 0) {
				co.commit();
				ps.close();
				co.close();
			}else if(rs == 0) {co.rollback();}
		}catch(Exception ex) {ex.printStackTrace();}
	}
	
	public SignupVo SignupSelect(String id, String pwd) {
		SignupVo vo = null;
		try {
			co.setAutoCommit(false);
			String sql = "SELECT id, pwd, irum, phone, email, host, post, address1, address2, compare FROM puser WHERE id = ? AND pwd = ?";
			
			ps = co.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				vo = new SignupVo();
				vo.setId(rs.getString("id"));
				vo.setPwd(rs.getString("pwd"));
				vo.setIrum(rs.getString("irum"));
				vo.setPhone(rs.getString("phone"));
				vo.setEmail(rs.getString("email"));
				vo.setHost(rs.getString("host"));
				vo.setPost(rs.getString("post"));
				vo.setAddress1(rs.getString("address1"));
				vo.setAddress2(rs.getString("address2"));
				vo.setCompare(rs.getString("compare"));
			}
			
			co.commit();
			ps.close();
			rs.close();
			co.close();
		}catch(Exception ex) {
			ex.printStackTrace();
			}
		
		return vo;
	}
	public SignupVo SignupSelect(String id) {
		SignupVo vo = null;
		try {
			co.setAutoCommit(false);
			String sql = "SELECT id, pwd, irum, phone, email, host, post, address1, address2, compare FROM puser WHERE id = ?";
			
			ps = co.prepareStatement(sql);
			ps.setString(1, id);
		
			rs = ps.executeQuery();
			
			if(rs.next()) {
				vo = new SignupVo();
				vo.setId(rs.getString("id"));
				vo.setPwd(rs.getString("pwd"));
				vo.setIrum(rs.getString("irum"));
				vo.setPhone(rs.getString("phone"));
				vo.setEmail(rs.getString("email"));
				vo.setHost(rs.getString("host"));
				vo.setPost(rs.getString("post"));
				vo.setAddress1(rs.getString("address1"));
				vo.setAddress2(rs.getString("address2"));
				vo.setCompare(rs.getString("compare"));
			}
			
			co.commit();
			ps.close();
			rs.close();
			co.close();
		}catch(Exception ex) {
			ex.printStackTrace();
			}
		
		return vo;
	}
	public void SignupUpdate(SignupVo vo) {
		try {
			co.setAutoCommit(false);
			
			String sql = "update pUser"
						+ " set pwd = ?, irum = ?, phone = ?,"
						+ " email = ?, host = ?, post = ?,"
						+ " address1 = ?, address2 = ?"
						+ " where id = ?";
			
			ps = co.prepareStatement(sql);
			ps.setString(1, vo.getPwd());
			ps.setString(2, vo.getIrum());
			ps.setString(3, vo.getPhone());
			ps.setString(4, vo.getEmail());
			ps.setString(5, vo.getHost());
			ps.setString(6, vo.getPost());
			ps.setString(7, vo.getAddress1());
			ps.setString(8, vo.getAddress2());
			ps.setString(9, vo.getId());
			
			int rs = ps.executeUpdate();
			if(rs > 0) {
				co.commit();
				ps.close();
				co.close();
			}else if(rs == 0) {co.rollback();}
		}catch(Exception ex) {ex.printStackTrace();}
	}
	
	public void Signupdie(SignupVo vo) {
		try {
			co.setAutoCommit(false);
			
			String sql = "DELETE FROM pUser where id = ?";
			
			ps = co.prepareStatement(sql);

			ps.setString(1, vo.getId());
			
			int rs = ps.executeUpdate();
			
			if(rs > 0) {
				co.commit();
				ps.close();
				co.close();
			}else if(rs == 0) {co.rollback();}
		}catch(Exception ex) {ex.printStackTrace();}
	}
}