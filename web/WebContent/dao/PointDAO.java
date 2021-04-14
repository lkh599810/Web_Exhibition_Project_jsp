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
	
	
	//리스트 끌어오기(id값 받아서)
	public ArrayList<Point> getPointList(String userID){
		ArrayList<Point> pointList = new ArrayList<Point>();
		
		String sql = "select * from pointbook where pointUserID=? ORDER BY pointDate DESC";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, userID);
			
			rs = pst.executeQuery();
			
			while(rs.next()) {
				Point point = new Point();
				
				point.setPointUserID(rs.getString("pointUserID"));
				point.setPointDate(rs.getString("pointDate"));
				point.setPointReason(rs.getString("pointReason"));
				point.setPoint(rs.getInt("point"));
				
				pointList.add(point);
			}
		}catch (Exception e) {
		}
		return pointList;
	}
	
	//포인트 적립or사용(아이디,날짜,이유,포인트 받아서)
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
