package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.MyTicket;


public class MyTicketDAO {
	
	private java.sql.Connection conn;
	private ResultSet rs;
	
	public MyTicketDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=UTC" , "root" , "1234");
		
		}catch (Exception e) {
		}
	}
	
	//리스트
	public static MyTicketDAO instance = new MyTicketDAO(); //객체 만들기
	
	//생성자
	public static MyTicketDAO getInstance() { //부르면 해당 객체 넘겾귀
		return instance;
	}
	//회원이 구매한 티켓 등록(이름,전시회번호 받아서)
	
	
	//회원이 구매한! 모든 티켓 호출
	public ArrayList<MyTicket> getAllTicket(String userID){
		ArrayList<MyTicket> listTicket = new ArrayList<MyTicket>();
		
		String sql = "SELECT * FROM buy WHERE buyUserID=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, userID);
			
			rs = pst.executeQuery();
			
			while(rs.next()) {
				MyTicket myTicket = new MyTicket();

				myTicket.setBuyNum(rs.getInt(1));
				myTicket.setBuyUserID(rs.getString(2));
				myTicket.setBuyExNum(rs.getInt(3));
				myTicket.setBuyCount(rs.getInt(4));
				myTicket.setBuyPrice(rs.getInt(5));
				myTicket.setBuyDate(rs.getString(6));
				myTicket.setBuyUse(rs.getInt(7));
				myTicket.setBuyUseDate(rs.getString(8));
			
			listTicket.add(myTicket);
			
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return listTicket;
	}
	

	
	//해당 구매내역 정보 변경 (사용or환불 받고, 날짜 받고, 번호받기)
	public int changeCondition(int useORrefune,String date, int buyNum) {
		String sql = "UPDATE buy SET buyUse=?, buyUseDate=? WHERE buyNum=?";
		try {
			PreparedStatement pst =conn.prepareStatement(sql);
			pst.setInt(1,useORrefune);
			if(useORrefune ==1) { //사용하기를 눌렀다면
				pst.setString(2,date);
			}
			else{ //환불하기를 눌렀다면
				pst.setString(2,null);
			}
			pst.setInt(3, buyNum);

			pst.executeUpdate();
			return 1;
		
		}catch (Exception e) {
		}
		return -1;
	}
	
	//
	

}
