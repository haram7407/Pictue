package signup;

public class SignupVo {
	int rno;
	String id;
	String pwd;
	String irum;
	String phone;
	String email;
	String host;
	String post;
	String address1;
	String address2;
	String compare;
	
	public SignupVo() {}
	
	public SignupVo(String id, String pwd, String irum, String phone, String email, String host, String post, 
					String address1, String address2) {
		this.id = id;
		this.pwd = pwd;
		this.irum = irum;
		this.phone = phone;
		this.email = email;
		this.host = host;
		this.post = post;
		this.address1 = address1;
		this.address2 = address2;
	}
	public SignupVo(String id){
		this.id = id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getIrum() {
		return irum;
	}
	public void setIrum(String irum) {
		this.irum = irum;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCompare() {
		return compare;
	}
	public void setCompare(String compare) {
		this.compare = compare;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}
}