package review;

public class Product {
	
	String pcode;
	String pname;
	String pcategory;
	int pquantity;
	int pprice;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}
	
	public Product(String pcode, String pname, String pcategory, int pquantity, int pprice) {
		super();
		this.pcode = pcode;
		this.pname = pname;
		this.pcategory = pcategory;
		this.pquantity = pquantity;
		this.pprice = pprice;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPcategory() {
		return pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}

	public int getPquantity() {
		return pquantity;
	}

	public void setPquantity(int pquantity) {
		this.pquantity = pquantity;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	
	
	
	
	
	
	

}
