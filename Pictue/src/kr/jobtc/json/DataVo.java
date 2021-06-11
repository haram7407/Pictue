package kr.jobtc.json;

public class DataVo {

	String mid;
	String mname;
	String phone;
	
	public DataVo() {}
	public DataVo(String id, String name, String phone) {
		this.mid = id;
		this.mname = name;
		this.phone = phone;
		//생성자 오버로딩(중복선언)
	}
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
