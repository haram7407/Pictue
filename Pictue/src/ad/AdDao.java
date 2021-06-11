package ad;

import java.io.File;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.MybaFactory;


public class AdDao {
	SqlSession sqlSession;
	
	public AdDao() {
		try {
			sqlSession = MybaFactory.getFactory().openSession();
			
			if(sqlSession == null) {
				System.out.println("sqlSession 생성시 오류 발생");
			}else {
				System.out.println("정상적으로 sqlSession이 생성됨.");
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public List<AdVo> select(Page page){
		List<AdVo> list = null;
		
		try {
			int totList = sqlSession.selectOne("ad.totList", page.getFindStr());
			page.setTotList(totList);
			page.compute();
			System.out.println(
					"성공");
			
			list = sqlSession.selectList("ad.search",page);
			sqlSession.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
	// ad, adAtt 저장
	// 오류 : 첨부 파일 삭제
	public String insert(AdVo vo) {
		String msg = "OK";
		int r = 0;
		int chkCnt = 0;
		try {
			int serial = sqlSession.selectOne("ad.getSerial");
			vo.setSerial(serial);
			r = sqlSession.insert("ad.insert", vo);
			if(r>0) {
				chkCnt = 0; //첨부파일의 수만큼 실행된 쿼리의 수
				for(AdAttVo v : vo.getAttList()) {
					v.setpSerial(serial);
					chkCnt += sqlSession.insert("ad.att_insert", v);
				}
				if(chkCnt == vo.getAttList().size()) {
					sqlSession.commit();
				}else {
					throw new Exception();
				}
			}else {
				throw new Exception();
			}
			
		}catch(Exception ex) {
			msg = ex.toString();
			System.out.println("r=" + r);
			System.out.println("chkCnt=" + chkCnt);
			ex.printStackTrace();
			sqlSession.rollback();
			
			for(AdAttVo delVo : vo.getAttList()) {
				File f = new File(AdFileUpload.saveDir + delVo.getSysAtt());
				if(f.exists()) f.delete();
			}
		}
		sqlSession.close();
		return msg;
	}
	
	public String update(AdVo vo) {
		String msg = "OK";
		int r=0;
		int chkCnt = 0;
		try {
			r = sqlSession.insert("ad.update", vo);
			if(r<1) throw new Exception();
			chkCnt = 0;
			for(AdAttVo v : vo.getAttList()) {
				v.setpSerial(vo.getSerial());
				chkCnt += sqlSession.insert("ad.att_insert", v);
			}
			if(chkCnt == vo.getAttList().size()) {
				for(AdAttVo delVo : vo.getDelList()) {
					
					sqlSession.delete("ad.att_delete2", delVo.getSysAtt() );
					File f = new File(AdFileUpload.saveDir +  delVo.getSysAtt());
					if(f.exists()) f.delete();
				}
				sqlSession.commit();
			}else {
				throw new Exception();
			}
			
		}catch(Exception ex) {
			System.out.println("r=" + r);
			System.out.println("chkCnt=" + chkCnt);
			msg = ex.toString();
			ex.printStackTrace();
			sqlSession.rollback();
			for(AdAttVo delVo : vo.getAttList()) {
				File f = new File(AdFileUpload.saveDir + delVo.getSysAtt());
				if(f.exists()) f.delete();
			}

		}
		sqlSession.close();
		return msg;
	}
	
	public AdVo view(int serial) {
		AdVo vo = new AdVo();
		try {
			sqlSession.update("ad.hitUp",serial);
			sqlSession.commit();
			vo = sqlSession.selectOne("ad.view",serial);
			List<AdAttVo> attList = sqlSession.selectList("ad.att_view",serial);
			
			vo.setAttList(attList);
			
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		sqlSession.close();
		return vo;
	}
	
	// 첨부파일 가져오기
	// board 삭제 -> boardAtt 삭제 -> 파일 삭제
	public String delete(AdVo vo) {
		String msg = "OK";
		List<AdAttVo> delList = null;
		try {
			delList = sqlSession.selectList("ad.att_list", vo.getSerial());
			
			int r = sqlSession.delete("ad.delete", vo);
			if(r>0) {
				r = sqlSession.delete("ad.att_delete", vo.getSerial());
				if(vo.getAttList()== null || r == vo.getAttList().size()) {
					sqlSession.commit();
					for(AdAttVo v : delList) {
						File f = new File(AdFileUpload.saveDir + v.getSysAtt());
						if(f.exists()) f.delete();
					}
				}else {
					throw new Exception();
				}
			}else {
				throw new Exception();				
			}
		}catch(Exception ex) {
			sqlSession.rollback();
			ex.printStackTrace();
			msg = ex.toString();
		}
		return msg;
	}
	
	public static void main(String[] args) {
		new AdDao();
	}
}
