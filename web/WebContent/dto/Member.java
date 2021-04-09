package dto;

public class Member {

	private String id;
	private String pw;
	private String userName;
	private String userEmail;
	private String userPhone;
	
	public Member() {
	}
	
	public Member(String id, String pw, String userName, String userEmail, String userPhone) {
		this.id = id;
		this.pw = pw;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	

}
