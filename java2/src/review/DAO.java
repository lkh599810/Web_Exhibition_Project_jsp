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
	
	Connection conn; // 인터페이스 선언 
	private static DAO DB = new DAO(); // db객체 선언
	public static DAO getDB() { // 객체 반환하는 메소드
		return DB;
	}
	
	// 생성자 : 객체 생성시 초기값
	public DAO() { 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/review?serverTime=UTC" , "root" , "1234");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// 회원 저장하는 메소드 
	public int setmember(  Member temp ) {
		
		String SQL = "insert into member values(?,?,?,?)";
			// SQL 삽입문법 : insert into 테이블명 values( [필드1]값1 , [필드2]값2 , [필드3]값2 ) 
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			// PreparedStatement [I] : SQL 질의어 제어/관리 가능 
			pstmt.setString(1, temp.getId() );
			pstmt.setString(2, temp.getPassword() );
			pstmt.setString(3, temp.getName() );
			pstmt.setString(4, "0" );
			
			
			pstmt.executeUpdate(); // 해당 SQL 실행 
			
			return 1; // SQL 삽입 성공 
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0; // 실패 : 아이디 중복 // DB 오류 
	}
	// 회원 로그인 메소드 
	public int login( String logid , String logpassowrd ) {
		
		String SQL = "select * from member where id=? and password=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, logid);
			pstmt.setString(2, logpassowrd);
			ResultSet rs = pstmt.executeQuery();
				// ResultSet [I] : 쿼리결과값 연동
					// .next() : 쿼리 다음값  [ 쿼리 첫번째값은 : null ]
			if( rs.next() ) {
				return 1; // 로그인성공 
			}
			else {
				return 2; // 로그인실패 [ 아이디 / 비밀번호가 없다 ]
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0; // db 오류 
	}
	
	// 회원 비밀번호 찾기 메소드 
	public String getpassword( String findid , String findname ) {
		String SQL = "select password from member where id=? and name=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, findid);
			pstmt.setString(2, findname);
			ResultSet rs = pstmt.executeQuery();
			if( rs.next() ) {
				String password = rs.getString("password");
									// getstring("필드명") : 해당 결과 필드의 값 반환 
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
	
	// 로그인된 id에 회원정보 찾는 메소드 
	public Member getmember( String logid  ) {
		Member temp = new Member(); // 임시 회원 객체 생성 
		String SQL ="SELECT * from member where id = ? "; // SQL 작성  
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL); // 연결된 DB에 SQL 연결 
			pstmt.setString(1, logid); // SQL ? 에 로그인ID 대입 
			ResultSet rs = pstmt.executeQuery(); // 쿼리 결과를 RESULTSET 인터페이스 연결 
			if( rs.next() ) { // 다음 쿼리 가져오기 
				temp.setId( rs.getString(1) ); // 쿼리 결과의 첫번째 열 [필드]
				temp.setPassword( rs.getString(2) ); // 쿼리 결과의 두번째 열 
				temp.setName( rs.getString(3) ); // 쿼리 결과의 세번째 열 
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
	// 로그인된 id에 회원정보 삭제 메소드 
	public int delmember( String logid ) {
		// 사용범위 반환값[returen/void] 메소드명( 인수 )
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
	
	// 모든 회원 목록 출력 메소드 :
	public ObservableList<Member> getlistmember(){
		// 임시 리스트 
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
	
	// 접속날짜 db 저장 메소드 
	public void lastdate( String userid , String now ) {
		
		String SQL ="update member set lastdate = ? where id = ?  ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, now);
			pstmt.setString(2, userid);
			
			pstmt.executeUpdate(); // SQL 실행 
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// 로그인된 id의 회원정보 수정 메소드 
	public int updatemember( String cpassword , String cname , String userid ) {
		
		String SQL = "update member set password=? , name = ? where id = ? ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, cpassword );
			pstmt.setString(2, cname );
			pstmt.setString(3, userid );
			
			pstmt.executeUpdate();
			return 1; // 성공시 
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return 0; //  실패 db 오류 등등 
	}

////////////////////////////////////////////////////////////////////////////////////////////////
	// 차량[제품] 등록 메소드 
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
		return 0 ; // pk 기본키는 중복값x => 오류발생 
	}
	// 모든 제품 출력 메소드 
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
	
	// 해당 제품을 삭제 메소드 
	public void productdelete( String pcode ) {
		
		String SQL ="Delete from product where pcode = ? ";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, pcode);
			
			pstmt.executeUpdate(); // 쿼리실행 
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
