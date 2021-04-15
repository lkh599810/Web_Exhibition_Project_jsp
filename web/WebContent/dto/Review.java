package dto;

public class Review {
	
	private int reviewNum;
	private int reviewExNum;
	private String reviewUserID;
	private String reviewContent;
	private String reviewFile;
	private double reviewGrade;
	private String reviewDate;
	
	private Review() {
		
	}
	
	private Review(int reviewNum,int reviewExNum, String reviewUserID, String reviewContent, double reviewGrade,String reviewDate){
		
		this.reviewNum = reviewNum;
		this.reviewExNum=reviewExNum;
		this.reviewUserID=reviewUserID;
		this.reviewContent=reviewContent;
		this.reviewGrade=reviewGrade;
		this.reviewDate=reviewDate;
		
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public int getReviewExNum() {
		return reviewExNum;
	}

	public void setReviewExNum(int reviewExNum) {
		this.reviewExNum = reviewExNum;
	}

	public String getReviewUserID() {
		return reviewUserID;
	}

	public void setReviewUserID(String reviewUserID) {
		this.reviewUserID = reviewUserID;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewFile() {
		return reviewFile;
	}

	public void setReviewFile(String reviewFile) {
		this.reviewFile = reviewFile;
	}

	public double getReviewGrade() {
		return reviewGrade;
	}

	public void setReviewGrade(double reviewGrade) {
		this.reviewGrade = reviewGrade;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	
	
	
	

}
