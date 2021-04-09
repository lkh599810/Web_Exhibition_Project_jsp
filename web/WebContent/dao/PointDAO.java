package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Point;

public class PointDAO {
	private Connection conn;
	private ResultSet rs;
	
	public PointDAO() {
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=UTC","root" ,"1234");
		
		}catch (Exception e) {
		}
	
	}
	
	private static PointDAO instance = new PointDAO();
	
	public static PointDAO getInstance() {
		return instance;
	}
	
	
	//����Ʈ �������(id�� �޾Ƽ�)
	public ArrayList<Point> getPointList(String userID){
		ArrayList<Point> pointList = new ArrayList<Point>();
		
		String sql = "select * from pointbook where pointUserID=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, userID);
			
			rs = pst.executeQuery();
			
			while(rs.next()) {
				Point point = new Point();
				
				point.setPointUserID(rs.getString("1"));
				point.setPointDate(rs.getString("2"));
				point.setPointReason(rs.getString("3"));
				point.setPoint(rs.getInt("4"));
				
				pointList.add(point);
			}
		}catch (Exception e) {
		}
		return pointList;
	}
	
	//����Ʈ ����or���(���̵�,��¥,����,����Ʈ �޾Ƽ�)
	public int inoutPoint(Point point) {
		String sql = "insert into pointbook (pointUserID,pointDate, pointReason, point)"+" values(?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
		
			pst.setString(1, point.getPointUserID());
			pst.setString(2, point.getPointDate());
			pst.setString(3, point.getPointReason());
			pst.setInt(4, point.getPoint());
			
			pst.executeUpdate();
			
			return 1;
			
		}catch (Exception e) {
		}
		return -1;
	}
	
	
}
