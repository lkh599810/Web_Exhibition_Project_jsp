package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.Exhibition;

public class ExhibitionDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	
	
	
	public ExhibitionDAO() {
		// TODO Auto-generated constructor stub
	
	try {
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?serverTimezone=UTC" , "root" , "1234");
			}catch (Exception e) {

			}

	
	
	} //������
		
	
	
	private static ExhibitionDAO instance=new ExhibitionDAO();
	
	
	
	public static ExhibitionDAO getinstance() {
		
		return instance; //db������ �ҷ���.
	
	}//getinstance ��
	
	
	
	
	public ArrayList<Exhibition> getallexhibition(){
		
		ArrayList<Exhibition> exlist= new ArrayList<Exhibition>();
		String SQL="select * from exhibition";
		
		
		try {
		
		PreparedStatement pstmt= conn.prepareStatement(SQL);
		rs=pstmt.executeQuery();
			
		
		while(rs.next()) {
			
			  Exhibition exhibition= new Exhibition();
			  
			  
			 exhibition.setExNum(rs.getInt(1));
			 exhibition.setExName(rs.getString(2));
			 exhibition.setExPost(rs.getString(3));
			 exhibition.setExPoto1(rs.getString(4));
			 exhibition.setExPoto2(rs.getString(5));
			 exhibition.setExPoto3(rs.getString(6));
			 exhibition.setExStart(rs.getString(7));
			 exhibition.setExEnd(rs.getString(8));
			 exhibition.setExContent(rs.getString(9));
			 exhibition.setExPrice(rs.getInt(10));
			 exhibition.setExSold(rs.getInt(11));
			 exhibition.setExMap(rs.getString(12));
			 exhibition.setExLike(rs.getBoolean(13));
			 exhibition.setExCondition(rs.getInt(14));
			 exhibition.setExGrade(rs.getInt(15));
			 
			 exlist.add(exhibition);
			 
			}
			 
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return exlist;
		
	}//getallexhibition ��
	
	
	
	// ����ȸ id �ش��ϴ� ����ȸ ��ȯ �޼ҵ�
	
	public Exhibition getexhibition(int exNum) {
		
		Exhibition exhibition=null;
		
		String SQL="select * from exhibition where exNum=?";
		
		try {
			
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, exNum);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				
				exhibition= new Exhibition();
				
				 exhibition.setExNum(rs.getInt(1));
				 exhibition.setExName(rs.getString(2));
				 exhibition.setExPost(rs.getString(3));
				 exhibition.setExPoto1(rs.getString(4));
				 exhibition.setExPoto2(rs.getString(5));
				 exhibition.setExPoto3(rs.getString(6));
				 exhibition.setExStart(rs.getString(7));
				 exhibition.setExEnd(rs.getString(8));
				 exhibition.setExContent(rs.getString(9));
				 exhibition.setExPrice(rs.getInt(10));
				 exhibition.setExSold(rs.getInt(11));
				 exhibition.setExMap(rs.getString(12));
				 exhibition.setExLike(rs.getBoolean(13));
				 exhibition.setExCondition(rs.getInt(14));
				 exhibition.setExGrade(rs.getInt(15));
				 
				 
				 return exhibition;
				
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return exhibition;
		
	}//exNum���� �ش��ǰ ��ȯ�޼ҵ� �� (�󼼺���)
	
	
	
	//����ȸ �߰�
	
	public int addexhibition(Exhibition exhibition) {
		
		
		
		String SQL="insert into exhibition(exName , exPost , exPoto1 , exPoto2 , exPoto3 , exStart , exEnd , exContent , exPrice , exSold , exMap , exLike , exCondition , exGrade )"
		+"values( ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? )";
		
		try {
			
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			
			
			//����Ű���� �ʵ�� ��� ���ֱ�
			
			pstmt.setString(1, exhibition.getExName());
			pstmt.setString(2, exhibition.getExPost());
			pstmt.setString(3, exhibition.getExPoto1());
			pstmt.setString(4, exhibition.getExPoto2());
			pstmt.setString(5, exhibition.getExPoto3());
			pstmt.setString(6, exhibition.getExStart());
			pstmt.setString(7, exhibition.getExEnd());
			pstmt.setString(8, exhibition.getExContent());
			pstmt.setInt(9, exhibition.getExPrice());
			pstmt.setInt(10, 0); //sold
			pstmt.setString(11, exhibition.getExMap());
			pstmt.setBoolean(12, false); //like
			pstmt.setInt(13, 0); //condition//������?
			pstmt.setInt(14, 0); //grade ����

			
			pstmt.executeUpdate();
			
			return 1;
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return -1;
		
	}// ����ȸ �߰��޼ҵ� ��
	
	
	
	public int deleteexhibition(int exNum) {
		
		String SQL="delete from exhibition where exNum=?";
		
		try {
			
			PreparedStatement pstmt= conn.prepareStatement(SQL);
			pstmt.setInt(1, exNum);
			pstmt.executeUpdate();
			
			return 1;
			
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return -1;
		
	}
	
	
	public int modifyexhibition(Exhibition exhibition) {
		
		
		String SQL="update exhibition set exName=? , exPost=? ,  exPoto1=? , exPoto2=? , exPoto3=? , exStart=? , exEnd=? , exContent=? , exPrice=? , exSold=? , exMap=? , exLike=? , exCondition = ? , exGrade = ? where exNum=?";
		
		
		
		try {
			
			PreparedStatement pstmt=conn.prepareStatement(SQL);
		
			
			pstmt.setString(1, exhibition.getExName());
			pstmt.setString(2, exhibition.getExPost());
			pstmt.setString(3, exhibition.getExPoto1());
			pstmt.setString(4, exhibition.getExPoto2());
			pstmt.setString(5, exhibition.getExPoto3());
			pstmt.setString(6, exhibition.getExStart());
			pstmt.setString(7, exhibition.getExEnd());
			pstmt.setString(8, exhibition.getExContent());
			pstmt.setInt(9, exhibition.getExPrice());
			pstmt.setInt(10, exhibition.getExSold());
			pstmt.setString(11, exhibition.getExMap());
			pstmt.setBoolean(12, exhibition.isExLike()); /// => boolean ���� is�� ����?? ->���ʻ� get��� is
			pstmt.setInt(13, exhibition.getExCondition());
			pstmt.setInt(14, exhibition.getExGrade());
			pstmt.setInt(15, exhibition.getExNum());
			
			pstmt.executeUpdate();
			
			return 1;
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return -1;
		
	}
	
	
	
	public void updatesold(Exhibition exhibition) { //���� �� �Ǹż��� +1 //����
		
		String SQL="update set exSold=? where exNum=?";
		
		try {
			
		PreparedStatement pstmt= conn.prepareStatement(SQL);
		
		pstmt.setInt(1, exhibition.getExSold()+1);
		pstmt.setInt(2, exhibition.getExNum());	
		
		pstmt.executeUpdate();
						
				
			
		}catch (Exception e) {
		
		}	
	
		
			
	}
	
	
	
	
	
	
}
