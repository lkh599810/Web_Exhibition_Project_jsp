package review;

public class Member {
	
	private String id;
	private String password;
	private String name;
	private String lastdate;

	// 后 积己磊 : ctrl+胶其捞官
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String password, String name) {
	
		this.id = id;
		this.password = password;
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastdate() {
		return lastdate;
	}

	public void setLastdate(String lastdate) {
		this.lastdate = lastdate;
	}
	
	
	
	
	
	

}
