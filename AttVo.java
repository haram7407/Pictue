package att;

public class AttVo {
	int serial;
	int pserial;
	String sysAtt;
	String oriAtt;
	
	public AttVo() {}
	public AttVo(int pserial, String sysAtt, String oriAtt) {
		this.pserial = pserial;
		this.sysAtt = sysAtt;
		this.oriAtt = oriAtt;
	}
	
	
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public int getPserial() {
		return pserial;
	}
	public void setPserial(int pserial) {
		this.pserial = pserial;
	}
	public String getSysAtt() {
		return sysAtt;
	}
	public void setSysAtt(String sysAtt) {
		this.sysAtt = sysAtt;
	}
	public String getOriAtt() {
		return oriAtt;
	}
	public void setOriAtt(String oriAtt) {
		this.oriAtt = oriAtt;
	}
	
	
}
