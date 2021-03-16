package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.cj.xdevapi.Result;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

public class DAO {
	
	Connection conn; // �������̽� ���� 
	private static DAO DB = new DAO(); // db��ü ����
	public static DAO getDB() { // ��ü ��ȯ�ϴ� �޼ҵ�
		return DB;
	}
	
	// ������ : ��ü ������ �ʱⰪ
	public DAO() { 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/review?serverTime=UTC" , "root" , "1234");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// ȸ�� �����ϴ� �޼ҵ� 
	public int setmember(  Member temp ) {
		
		String SQL = "insert into member values(?,?,?,?)";
			// SQL ���Թ��� : insert into ���̺�� values( [�ʵ�1]��1 , [�ʵ�2]��2 , [�ʵ�3]��2 ) 
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			// PreparedStatement [I] : SQL ���Ǿ� ����/���� ���� 
			pstmt.setString(1, temp.getId() );
			pstmt.setString(2, temp.getPassword() );
			pstmt.setString(3, temp.getName() );
			pstmt.setString(4, "0" );
			
			
			pstmt.executeUpdate(); // �ش� SQL ���� 
			
			return 1; // SQL ���� ���� 
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0; // ���� : ���̵� �ߺ� // DB ���� 
	}
	// ȸ�� �α��� �޼ҵ� 
	public int login( String logid , String logpassowrd ) {
		
		String SQL = "select * from member where id=? and password=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, logid);
			pstmt.setString(2, logpassowrd);
			ResultSet rs = pstmt.executeQuery();
				// ResultSet [I] : ��������� ����
					// .next() : ���� ������  [ ���� ù��°���� : null ]
			if( rs.next() ) {
				return 1; // �α��μ��� 
			}
			else {
				return 2; // �α��ν��� [ ���̵� / ��й�ȣ�� ���� ]
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0; // db ���� 
	}
	
	// ȸ�� ��й�ȣ ã�� �޼ҵ� 
	public String getpassword( String findid , String findname ) {
		String SQL = "select password from member where id=? and name=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, findid);
			pstmt.setString(2, findname);
			ResultSet rs = pstmt.executeQuery();
			if( rs.next() ) {
				String password = rs.getString("password");
									// getstring("�ʵ��") : �ش� ��� �ʵ��� �� ��ȯ 
				return password;
			}
			else {
				return "2";
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return "0";
	}
	
	// �α��ε� id�� ȸ������ ã�� �޼ҵ� 
	public Member getmember( String logid  ) {
		Member temp = new Member(); // �ӽ� ȸ�� ��ü ���� 
		String SQL ="SELECT * from member where id = ? "; // SQL �ۼ�  
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL); // ����� DB�� SQL ���� 
			pstmt.setString(1, logid); // SQL ? �� �α���ID ���� 
			ResultSet rs = pstmt.executeQuery(); // ���� ����� RESULTSET �������̽� ���� 
			if( rs.next() ) { // ���� ���� �������� 
				temp.setId( rs.getString(1) ); // ���� ����� ù��° �� [�ʵ�]
				temp.setPassword( rs.getString(2) ); // ���� ����� �ι�° �� 
				temp.setName( rs.getString(3) ); // ���� ����� ����° �� 
				return temp;
				
			}else {
				return temp;
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return temp;
	}
	// �α��ε� id�� ȸ������ ���� �޼ҵ� 
	public int delmember( String logid ) {
		// ������ ��ȯ��[returen/void] �޼ҵ��( �μ� )
		String SQL ="delete from member where id = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, logid);
			pstmt.executeUpdate();
			return 1 ;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0 ;
	}
	
	// ��� ȸ�� ��� ��� �޼ҵ� :
	public ObservableList<Member> getlistmember(){
		// �ӽ� ����Ʈ 
		ObservableList<Member> list = FXCollections.observableArrayList();
		String SQL = "SELECT * FROM member";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			ResultSet rs =  pstmt.executeQuery();
			
			while( rs.next() ) {
				
				Member temp = new Member();
				temp.setId( rs.getString(1) );
				temp.setPassword( rs.getString(2) );
				temp.setName( rs.getString(3) );
				temp.setLastdate( rs.getString(4) );
				list.add(temp);
				
			}
			return list;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	// ���ӳ�¥ db ���� �޼ҵ� 
	public void lastdate( String userid , String now ) {
		
		String SQL ="update member set lastdate = ? where id = ?  ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, now);
			pstmt.setString(2, userid);
			
			pstmt.executeUpdate(); // SQL ���� 
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// �α��ε� id�� ȸ������ ���� �޼ҵ� 
	public int updatemember( String cpassword , String cname , String userid ) {
		
		String SQL = "update member set password=? , name = ? where id = ? ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, cpassword );
			pstmt.setString(2, cname );
			pstmt.setString(3, userid );
			
			pstmt.executeUpdate();
			return 1; // ������ 
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0; //  ���� db ���� ��� 
	}

////////////////////////////////////////////////////////////////////////////////////////////////
	// ����[��ǰ] ��� �޼ҵ� 
	public int productadd( Product temp ) {
		String SQL = "insert into product values(?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, temp.getPcode());
			pstmt.setString(2, temp.getPname());
			pstmt.setString(3, temp.getPcategory());
			pstmt.setInt(4, temp.getPquantity());
			pstmt.setInt(5, temp.getPprice());
			
			pstmt.executeUpdate();
			return 1 ; 
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0 ; // pk �⺻Ű�� �ߺ���x => �����߻� 
	}
	// ��� ��ǰ ��� �޼ҵ� 
	public ObservableList<Product> productlist( ){

		ObservableList<Product> list = FXCollections.observableArrayList();
		String SQL = "SELECT * FROM product";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			ResultSet rs =  pstmt.executeQuery();
			
			while( rs.next() ) {
				Product temp = new Product();
				temp.setPcode( rs.getString(1));
				temp.setPname( rs.getString(2));
				temp.setPcategory( rs.getString(3));
				temp.setPquantity( rs.getInt(4));
				temp.setPprice( rs.getInt(5));
				list.add(temp);
			}
			return list;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	// �ش� ��ǰ�� ���� �޼ҵ� 
	public void productdelete( String pcode ) {
		
		String SQL ="Delete from product where pcode = ? ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, pcode);
			
			pstmt.executeUpdate(); // �������� 
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
