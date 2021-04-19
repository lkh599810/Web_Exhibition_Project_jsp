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
	
	public ArrayList<Review> getAllreview(String reviewUserID){
		ArrayList<Review> listreview = new ArrayList<Review>();
		
		String sql = "SELECT * FROM write WHERE ExhibitionNum=?";
		
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, reviewUserID);
			
			rs = pst.executeQuery();
			
			while(rs.next()) {
				
				Review review = new Review();
				
				review.setReviewUserID(rs.getString(1));
				review.setReviewNum(rs.getInt(2));
				review.setReviewExNum(rs.getInt(3));
				review.setReviewContent(rs.getString(4));
				review.setReviewDate(rs.getString(5));
				review.setReviewFile(rs.getString(6));
				review.setReviewGrade(rs.getDouble(7)));
				
				listreview.add(review);
				
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return listreview;
	}
	
	public int UploadReview(int reviewnum) {
		try {
				String sql = "DELETE FROM review WHERE reviewnum=?";
				PreparedStatement pst = conn.prepareStatement(sql);
				
				pst.setInt(1,reviewnum);
				pst.executeUpdate();
				
				return 1;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
		
	}
	
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
}
	
	
	