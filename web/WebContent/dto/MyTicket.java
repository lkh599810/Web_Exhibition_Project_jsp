package dto;

public class MyTicket {

	private int buyNum; //Ƽ�Ϲ�ȣ
	private String buyUserID; //���ž��̵�
	private int buyExNum; //����������ȸ��ȣ
	private int buyCount; //���� ����
	private int buyPrice; //���� �Ѱ���
	private String buyDate; //���ų�¥
	private int buyUse; //0:������ 1:��� 2:���
	private String buyUseDate; //��볯¥
	
	public MyTicket() {
		
	}
	public MyTicket(String buyUserID,int buyExNum,int buyCount,int buyPrice,String buyDate, int buyUse, String buyUseDate) {
		this.buyUserID = buyUserID;
		this.buyExNum = buyExNum;
		this.buyCount = buyCount;
		this.buyPrice = buyPrice;
		this.buyDate = buyDate;
		this.buyUse = buyUse;
		this.buyUseDate = buyUseDate;
	}
	public int getBuyNum() {
		return buyNum;
	}
	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}
	public String getBuyUserID() {
		return buyUserID;
	}
	public void setBuyUserID(String buyUserID) {
		this.buyUserID = buyUserID;
	}
	public int getBuyExNum() {
		return buyExNum;
	}
	public void setBuyExNum(int buyExNum) {
		this.buyExNum = buyExNum;
	}
	public int getBuyCount() {
		return buyCount;
	}
	public void setBuyCount(int buyCount) {
		this.buyCount = buyCount;
	}
	public int getBuyPrice() {
		return buyPrice;
	}
	public void setBuyPrice(int buyPrice) {
		this.buyPrice = buyPrice;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public int getBuyUse() {
		return buyUse;
	}
	public void setBuyUse(int buyUse) {
		this.buyUse = buyUse;
	}
	public String getBuyUseDate() {
		return buyUseDate;
	}
	public void setBuyUseDate(String buyUseDate) {
		this.buyUseDate = buyUseDate;
	}
	
	
	
	
}
