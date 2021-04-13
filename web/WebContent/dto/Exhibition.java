package DTO;

public class Exhibition {

	private int exNum;
	private String exName;
	private String exPost;
	private String exPoto1;
	private String exPoto2;
	private String exPoto3;
	private String exStart;
	private String exEnd;
	private String exContent;
	private int exPrice;
	private int exSold;
	private String exMap;
	private boolean exLike;
	private int exCondition;
	private int exGrade;
	
	
	public Exhibition() {
			
		
		
		
	
	}
	 
	 
	 
	 
	
	public Exhibition(int exNum, String exName, int exPrice) { //생성자. 갯수는 상관없고, 초기값에 무조건 필수로 써야하는것. 
		
		this.exNum=exNum;
		this.exName=exName;
		this.exPrice=exPrice;
		
		
	}
	
	
	
	

	public int getExNum() {
		return exNum;
	}

	public void setExNum(int exNum) {
		this.exNum = exNum;
	}

	public String getExName() {
		return exName;
	}

	public void setExName(String exName) {
		this.exName = exName;
	}

	public String getExPost() {
		return exPost;
	}

	public void setExPost(String exPost) {
		this.exPost = exPost;
	}

	public String getExPoto1() {
		return exPoto1;
	}

	public void setExPoto1(String exPoto1) {
		this.exPoto1 = exPoto1;
	}

	public String getExPoto2() {
		return exPoto2;
	}

	public void setExPoto2(String exPoto2) {
		this.exPoto2 = exPoto2;
	}

	public String getExPoto3() {
		return exPoto3;
	}

	public void setExPoto3(String exPoto3) {
		this.exPoto3 = exPoto3;
	}

	public String getExStart() {
		return exStart;
	}

	public void setExStart(String exStart) {
		this.exStart = exStart;
	}

	public String getExEnd() {
		return exEnd;
	}

	public void setExEnd(String exEnd) {
		this.exEnd = exEnd;
	}

	public String getExContent() {
		return exContent;
	}

	public void setExContent(String exContent) {
		this.exContent = exContent;
	}

	public int getExPrice() {
		return exPrice;
	}

	public void setExPrice(int exPrice) {
		this.exPrice = exPrice;
	}

	public int getExSold() {
		return exSold;
	}

	public void setExSold(int exSold) {
		this.exSold = exSold;
	}

	public String getExMap() {
		return exMap;
	}

	public void setExMap(String exMap) {
		this.exMap = exMap;
	}

	public boolean isExLike() { //자동 getset 쓸 시에 boolean 형은 islike? ->관례상 쓴대요.
		return exLike;
	}

	public void setExLike(boolean exLike) {
		this.exLike = exLike;
	}

	public int getExCondition() {
		return exCondition;
	}

	public void setExCondition(int exCondition) {
		this.exCondition = exCondition;
	}

	public int getExGrade() {
		return exGrade;
	}

	public void setExGrade(int exGrade) {
		this.exGrade = exGrade;
	}
	
	
	
	
	
}
