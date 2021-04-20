package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.xml.transform.Result;

public class ReviewDao {

	private Connection conn;
	private ResultSet rs;
	
	public ReviewDao() {
		
		try {
			
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?serverTimezone=UTC" , "root" , "1234");
			
		}
		catch(Exception e) {
			
		}
	}
	
	private static ReviewDao instance = new ReviewDao();
	
	public static ReviewDao getinstance() {
		
		return instance;
	}
	
	public ArrayList<Review> getAllreview(String exhibitionNum){
		ArrayList<Review> listreview = new ArrayList<Review>();
		
		String sql = "SELECT * FROM review WHERE reviewExNum=?";
		
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, exhibitionNum);
			
			rs = pst.executeQuery();
			
			while(rs.next()) {
				
				Review review = new Review();
				
				review.setReviewNum(rs.getInt(1));
				review.setReviewExNum(rs.getInt(2));
				review.setReviewUserID(rs.getString(3));
				review.setReviewContent(rs.getString(4));
				review.setReviewFile(rs.getString(5));
				review.setReviewGrade(rs.getDouble(6));
				review.setReviewDate(rs.getString(7));
				
				listreview.add(review);
				
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return listreview;
	}
	
	// 사진파일 포함된 리뷰우
	public int UploadReview(Review review) {
		try {
				String sql = "INSERT into review values(? , ? , ? , ? , ? , ?)";
				PreparedStatement pst = conn.prepareStatement(sql);
				
				pst.setInt(1 , review.getReviewExNum());
				pst.setString(2, review.getreviewUserID());
				pst.setString(3, review.getreviewContent());
				pst.setString(4, review.getreviewFile());
				pst.setDouble(5, review.getreviewGrade());
				pst.setString(6, review.getreviewDate());
				pst.executeUpdate();
				
				return 1;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
		
	}
	// 사진파일 포함안된 리뷰류
	
	
	
	
	
	
	public int DeleteReview(int reviewnum ) {
		
		try {
				String sql = "DELETE FROM review WHERE reviewnum=?";
				PreparedStatement pst = conn.prepareStatement(sql);
				
				pst.setInt(1, reviewnum);
				pst.executeUpdate();
				
				return 1; 
			
		}catch (Exception e) {
			// TODO: handle exception
			
		}
		
		return -1;
	}
	
	public Double getGrade(int ExNum) {
		try {
			String sql = "SELECT reviewGrade FROM review WHERE reviewnum=?";
			
			
			
		}
		
	}
}
	
	
	