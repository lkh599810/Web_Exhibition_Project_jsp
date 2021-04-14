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
	
	//����Ʈ
	public static MyTicketDAO instance = new MyTicketDAO(); //��ü �����
	
	//������
	public static MyTicketDAO getInstance() { //�θ��� �ش� ��ü �сű�
		return instance;
	}
	//ȸ���� ������ Ƽ�� ���(�̸�,����ȸ��ȣ �޾Ƽ�)
	
	
	//ȸ���� ������! ��� Ƽ�� ȣ��
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
	

	
	//�ش� ���ų��� ���� ���� (���orȯ�� �ް�, ��¥ �ް�, ��ȣ�ޱ�)
	public int changeCondition(int useORrefune,String date, int buyNum) {
		String sql = "UPDATE buy SET buyUse=?, buyUseDate=? WHERE buyNum=?";
		try {
			PreparedStatement pst =conn.prepareStatement(sql);
			pst.setInt(1,useORrefune);
			if(useORrefune ==1) { //����ϱ⸦ �����ٸ�
				pst.setString(2,date);
			}
			else{ //ȯ���ϱ⸦ �����ٸ�
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
