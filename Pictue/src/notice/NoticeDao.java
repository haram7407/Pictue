package notice;

import java.io.File;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.MybaFactory;


public class NoticeDao {
	SqlSession sqlSession;
	
	public NoticeDao() {
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
	
	public List<NoticeVo> select(Page page){
		List<NoticeVo> list = null;
		
		try {
			int totList = sqlSession.selectOne("notice.totList", page.getFindStr());
			page.setTotList(totList);
			page.compute();
			System.out.println(
					"찾기성공");
			
			list = sqlSession.selectList("notice.search",page);
			sqlSession.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
	// ad, adAtt 저장
	// 오류 : 첨부 파일 삭제
	public String insert(NoticeVo vo) {
		String msg = "OK";
		int r = 0;
		int chkCnt = 0;
		try {
			int serial = sqlSession.selectOne("notice.getSerial");
			vo.setSerial(serial);
			r = sqlSession.insert("notice.insert", vo);
			if(r>0) {
				chkCnt = 0; //첨부파일의 수만큼 실행된 쿼리의 수
				for(NoticeAttVo v : vo.getAttList()) {
					v.setpSerial(serial);
					chkCnt += sqlSession.insert("notice.att_insert", v);
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
			
			for(NoticeAttVo delVo : vo.getAttList()) {
				File f = new File(NoticeFileUpload.saveDir + delVo.getSysAtt());
				if(f.exists()) f.delete();
			}
		}
		sqlSession.close();
		return msg;
	}
	
	public String update(NoticeVo vo) {
		String msg = "OK";
		int r=0;
		int chkCnt = 0;
		try {
			r = sqlSession.insert("notice.update", vo);
			if(r<1) throw new Exception();
			chkCnt = 0;
			for(NoticeAttVo v : vo.getAttList()) {
				v.setpSerial(vo.getSerial());
				chkCnt += sqlSession.insert("notice.att_insert", v);
			}
			if(chkCnt == vo.getAttList().size()) {
				for(NoticeAttVo delVo : vo.getDelList()) {
					
					sqlSession.delete("notice.att_delete2", delVo.getSysAtt() );
					File f = new File(NoticeFileUpload.saveDir +  delVo.getSysAtt());
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
			for(NoticeAttVo delVo : vo.getAttList()) {
				File f = new File(NoticeFileUpload.saveDir + delVo.getSysAtt());
				if(f.exists()) f.delete();
			}

		}
		sqlSession.close();
		return msg;
	}
	
	public NoticeVo view(int serial) {
		NoticeVo vo = new NoticeVo();
		try {
			sqlSession.update("notice.hitUp",serial);
			sqlSession.commit();
			vo = sqlSession.selectOne("notice.view",serial);
			List<NoticeAttVo> attList = sqlSession.selectList("notice.att_view",serial);
			
			System.out.println("attList 찾기 성공");
			vo.setAttList(attList);
			System.out.println("attList 가져오기 성공");
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		sqlSession.close();
		return vo;
	}
	
	// 첨부파일 가져오기
	// board 삭제 -> boardAtt 삭제 -> 파일 삭제
	public String delete(NoticeVo vo) {
		String msg = "OK";
		List<NoticeAttVo> delList = null;
		try {
			delList = sqlSession.selectList("notice.att_list", vo.getSerial());
			
			int r = sqlSession.delete("notice.delete", vo);
			if(r>0) {
				r = sqlSession.delete("notice.att_delete", vo.getSerial());
				if(vo.getAttList()== null || r == vo.getAttList().size()) {
					sqlSession.commit();
					for(NoticeAttVo v : delList) {
						File f = new File(NoticeFileUpload.saveDir + v.getSysAtt());
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
		new NoticeDao();
	}
}
