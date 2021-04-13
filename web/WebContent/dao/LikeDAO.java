package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import DTO.Like;


public class LikeDAO {

	
	private Connection conn;
	private ResultSet rs;
	
	
	
	
	public LikeDAO() {
		
			try {
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?serverTimezone=UTC" , "root" , "1234");
			}catch (Exception e) {

			}

	
	
	} //생성자
	
	
	private static LikeDAO instance=new LikeDAO();
	
	
	
	public static LikeDAO getinstance() {
		
		return instance; //db연동을 불러옴.
	
	}//getinstance 끝
	
	
	public ArrayList<Like> getalllike(){
		
		ArrayList<Like> likelist= new ArrayList<Like>();
		String SQL="select * from like";
		
		
		try {
		
		PreparedStatement pstmt= conn.prepareStatement(SQL);
		rs=pstmt.executeQuery();
			
		
		while(rs.next()) {
			
			  Like like= new Like();
			  
			  
			 like.setLikeNum(rs.getInt(1));
			 like.setLikeUserID(rs.getString(2));
			 like.setLikeExNum(rs.getInt(3));
			 like.setLikeCondition(rs.getBoolean(4));
			
			 
			 likelist.add(like);
			 
			}
			 
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return likelist;
		
	}//getalllike 끝
	
	
	
	
	public int addlike(Like like) { //'찜하기 추가 메소드'
		
		
		
		String SQL="insert into like( likeNum , likeUserID , likeExNum , likeCondition )"
		+"values( ? , ? , ? , ? )";
		
		try {
			
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			
			
			 pstmt.setInt(1,like.getLikeNum());
			 pstmt.setString(2,like.getLikeUserID());
			 pstmt.setInt(3,like.getLikeExNum());
			 pstmt.setBoolean(4,like.getLikeCondition());
			
			

			
			pstmt.executeUpdate();
			
			return 1;
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return -1;
		
	}// 찜하기 추가메소드 끝
	
	
	
	public void updatelike(Like like) {
		
		String SQL="update set likeCondition=? where likeNum=?";
		
		try {
		
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setBoolean(1, like.getLikeCondition());
			pstmt.setInt(2, like.getLikeNum());
			
		}catch (Exception e) {
			
		}
		
		
	}
	
	
	
	
	
	
}
