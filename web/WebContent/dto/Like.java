package DTO;

public class Like {
	
	private int likeNum; //�⺻Ű
	private String likeUserID;
	private int likeExNum;
	private int likeCondition; //���ƿ� ����
	
	public Like() { //���������

	
	}
	
	public Like(int likeNum, String likeUserID, int likeExNum, int likeCondition) {
		
		this.likeNum=likeNum;
		this.likeUserID=likeUserID;
		this.likeExNum=likeExNum;
		this.likeCondition=likeCondition;
		
		
	}
	
	
	
	

	public int getLikeNum() {
		return likeNum;
	}

	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}

	public String getLikeUserID() {
		return likeUserID;
	}

	public void setLikeUserID(String likeUserID) {
		this.likeUserID = likeUserID;
	}

	public int getLikeExNum() {
		return likeExNum;
	}

	public void setLikeExNum(int likeExNum) {
		this.likeExNum = likeExNum;
	}

	public int getLikeCondition() {
		return likeCondition;
	}

	public void setLikeCondition(int likeCondition) {
		this.likeCondition = likeCondition;
	}
	
	
	
	
	
	
	

	
	
}

