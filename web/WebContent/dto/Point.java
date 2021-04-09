package dto;

public class Point {
	
	private String pointUserID;
	private String pointDate;
	private String pointReason;
	private int point;
	
	public Point() {
		
	}
	
	public Point(String pointUserID, String pointDate, String pointReason, int point) {
		this.pointUserID = pointUserID;
		this.pointDate=pointDate;
		this.pointReason=pointReason;
		this.point = point;
	}

	public String getPointUserID() {
		return pointUserID;
	}

	public void setPointUserID(String pointUserID) {
		this.pointUserID = pointUserID;
	}

	public String getPointDate() {
		return pointDate;
	}

	public void setPointDate(String pointDate) {
		this.pointDate = pointDate;
	}

	public String getPointReason() {
		return pointReason;
	}

	public void setPointReason(String pointReason) {
		this.pointReason = pointReason;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	

}
