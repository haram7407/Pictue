package notice;

import java.util.List;

public class NoticeVo {
	int rno;//게시물순서
	int serial;//게시물고유번호
	int pSerial;
	String id ="";
	String title ="";
	String doc ="";
	int hit;
	String mdate ="";
	int attCnt;
	
	List<NoticeAttVo> attList;
	List<NoticeAttVo> delList;
	
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public int getpSerial() {
		return pSerial;
	}
	public void setpSerial(int pSerial) {
		this.pSerial = pSerial;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDoc() {
		return doc;
	}
	public void setDoc(String doc) {
		this.doc = doc;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getmDate() {
		return mdate;
	}
	public void setmDate(String mDate) {
		this.mdate = mDate;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public int getAttCnt() {
		return attCnt;
	}
	public void setAttCnt(int attCnt) {
		this.attCnt = attCnt;
	}
	public List<NoticeAttVo> getAttList() {
		return attList;
	}
	public void setAttList(List<NoticeAttVo> attList) {
		this.attList = attList;
	}
	public List<NoticeAttVo> getDelList() {
		return delList;
	}
	public void setDelList(List<NoticeAttVo> delList) {
		this.delList = delList;
	}
}
