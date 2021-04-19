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
				
	
	
	} //������
	
	
	private static LikeDAO instance=new LikeDAO();
	
	
	
	public static LikeDAO getinstance() {
		
		return instance; //db������ �ҷ���.
	
	}//getinstance ��
	
	
	
	
	//��ü ���ϱ��ϰ�������
	public ArrayList<Like> getalllike(String likeUserID){
		
		ArrayList<Like> likelist= new ArrayList<Like>();
		
		String SQL="select * from like2 where likeUserID=?";
		
		
		try {
		
			PreparedStatement pstmt= conn.prepareStatement(SQL);
			pstmt.setString(1, likeUserID);
		
			rs=pstmt.executeQuery();
			
		
			while(rs.next()) {
			
			  Like like= new Like();
			  
			  
			 like.setLikeNum(rs.getInt(1));
			 like.setLikeUserID(rs.getString(2));
			 like.setLikeExNum(rs.getInt(3));
			 like.setLikeCondition(rs.getInt(4));
			 
			 likelist.add(like);
			 
			}
			 
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return likelist;
		
	}//getalllike ��
	
	
	
	 //���ϱ� ��Ͽ��� ���� ����ȸ �ϳ� ��������
	public Like getlike(String likeUserID, int likeExNum) { //���ϱ� ��Ͽ��� ���� ����ȸ �ϳ� ��������
		
		Like like = new Like();
		
		String SQL="select * from like2 where likeUserID=? and likeExNum=?";
		
		try {
		
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, likeUserID);
			pstmt.setInt(2, likeExNum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				
				like.setLikeNum( rs.getInt(1) ); 
				like.setLikeUserID(rs.getString(2));
				like.setLikeExNum(rs.getInt(3));
				like.setLikeCondition(rs.getInt(4));
				
				
				return like;
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return like;
	
	}
	
	
	
	
	public int addlike(Like like) { //'���ϱ� �߰� �޼ҵ�'
		
		
		
		String SQL="insert into like2( likeUserID , likeExNum , likeCondition )"
		+"values( ? , ? , ? )";
		
		try {
			
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			
			
			
			 pstmt.setString(1,like.getLikeUserID());
			 pstmt.setInt(2,like.getLikeExNum());
			 pstmt.setInt(3,1); 
			
			
			pstmt.executeUpdate();
			
			return 1;
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return -1;
		
	}// ���ϱ� �߰��޼ҵ� ��
	
	
			
			
			//likeCondition �˾ƺ���
			public int likeConditionCheck(String likeUserID,int likeExNum) {
				String SQL ="select likeCondition from like2 where likeUserID=? and likeExNum=?";
				
				try {
					PreparedStatement pstmt = conn.prepareStatement(SQL);
					
					
					pstmt.setString(1, likeUserID);
					pstmt.setInt(2, likeExNum);
					
					
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						if(rs.getInt(1)==1) {
							return 1;		//condition�� 1�̸� return 1
						}else if(rs.getInt(1)==0) {
							
							return 0;//condition�� 0�̸� return 0
						}
					}
					else {
						
						
						return -1; //�ߺ� ���� 
					}
					
				}catch (Exception e) {
					
				}
				return -2; //DB����
				
			} 
				
			
	
			
			
			
	public void updatelikeCondition(Like like) {// ���̵�/����ȸ��ȣ�� ���� �� ���� �ٲ��ִ� �޼ҵ�
		
		String SQL="update like2 set likeCondition=? where likeUserID=? and likeExNum=?";
		
		try {
		
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			
			
			if(like.getLikeCondition()==0){
				
				like.setLikeCondition(1);
				
				
				
			}else if(like.getLikeCondition()==1) {
				
				like.setLikeCondition(0);
				
			}
			
			pstmt.setInt(1, like.getLikeCondition());
			pstmt.setString(2, like.getLikeUserID());	
			pstmt.setInt(3, like.getLikeExNum());
		
			
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			
		}
		
		
	}
	
	
	
	
	
	
}
