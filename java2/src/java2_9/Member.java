package java2_9;

import javafx.beans.property.SimpleStringProperty;

public class Member {
	
	SimpleStringProperty Id;
	SimpleStringProperty Password;

	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	public Member( String Id , String Password) {
		this.Id = new SimpleStringProperty( Id);
		this.Password = new SimpleStringProperty( Password);
	}
	
	public String getId() {
		return Id.get();
	}
	public void setId(SimpleStringProperty Id) {
		this.Id = Id;
	}
	public String getPassword() {
		return Password.get();
	}
	public void setKorean(SimpleStringProperty Password) {
		this.Password = Password;
	}
	
	

}
