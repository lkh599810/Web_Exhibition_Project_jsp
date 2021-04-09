package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.Member;

public class MemberDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public MemberDAO() {
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=UTC","root" ,"1234");
		
		}catch (Exception e) {
		}
	
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	//모든 회원 호출하는 멤버 리스트는 아직 필요x

	
	//회원가입
	public int SignUp(Member member) {
		String sql ="insert into member values(?,?,?,?,?)";
		
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, member.getId());
			pst.setString(2, member.getPw());
			pst.setString(3, member.getUserName());
			pst.setString(4, member.getUserEmail());
			pst.setString(5, member.getUserPhone());
			
			pst.executeUpdate();
			
			return 1;
			
		}catch (Exception e) {
			
		}
		return -1;
		
	}
	
	//아이디 중복확인
	public int IdCheck(String userID) {
		String sql ="select * from member where id=?";
		
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, userID);
			
			pst.executeQuery();
			
			if(rs.next()) {
				return 1; //중복 아이디 있음
			}
			else {
				return 0; //중복 아이디 없음
			}
			
			
		}catch (Exception e) {
			
		}
		return -1; //DB오류
		
	} 
	
	//로그인
	public int login(String userID,String userPW) {
		String sql ="select pw from member where id = ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, userID);
			
			rs = pst.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(userPW)) {
					return 1; //로그인 성공
				}
				else {
					return 0; //비밀번호 오류
				}
			}
			return -1; //아이디 오류
		}catch (Exception e) {
		}
			return -2; //db연동실패
	}
	
	
	
	//수정할때 데이터 가져오기(아이디)
		public Member GetMember(String userID) {
			String sql = "select * from member where id=?";
			try{
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setString(1,userID);
				
				rs = pst.executeQuery();
				
				while(rs.next()) {
					Member member = new Member();
					
					member.setId(rs.getString(1));
					member.setPw(rs.getString(2));
					member.setUserName(rs.getString(3));
					member.setUserEmail(rs.getString(4));
					member.setUserPhone(rs.getString(5));
					
					return member;
				}
			}catch (Exception e) {
			}
			return null;
			
		}
	
	//수정 (아이디값 받아서)
	public int UpdateMember(Member member) {
		String sql ="update member set pw=?, userName=?, userEmail=?,userPhone=? where id=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, member.getPw());
			pst.setString(2, member.getUserName());
			pst.setString(3, member.getUserEmail());
			pst.setString(4, member.getUserPhone());
			pst.setString(5, member.getId());
			
			pst.executeUpdate();
			return 1;
			
		}catch (Exception e) {
		}
		return -1;
	}
	
	//삭제 (아이디값,비번 받아서)
	public int DeleteMember(String userID,String userPW) {
		try {
			String sql="delete from member where id=? AND pw=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, userID);
			pst.setString(2, userPW);
			pst.executeUpdate();
			
			return 1;
		
		}catch (Exception e) {
		}
		return -1;
	}

}
