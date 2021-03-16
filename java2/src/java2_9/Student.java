package java2_9;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Student {
	
	// 필드 
	SimpleStringProperty name; 
	SimpleIntegerProperty korean;
	SimpleIntegerProperty math;
	SimpleIntegerProperty english;

	// 생성자 
	public Student() {
		this.name = new SimpleStringProperty();
		this.korean = new SimpleIntegerProperty();
		this.math = new SimpleIntegerProperty();
		this.english = new SimpleIntegerProperty();
	}
	
	// 생성자 
	public Student( String name , int korean , int math , int english) {
		this.name = new SimpleStringProperty( name);
		this.korean = new SimpleIntegerProperty( korean);
		this.math = new SimpleIntegerProperty(math);
		this.english = new SimpleIntegerProperty(english);
	}
	
	// 필드  반환=get / 저장=set 메소드
	// 오른쪽클릭 => 소스 
	public String getName() {
		return name.get();
	}
	public void setName(SimpleStringProperty name) {
		this.name = name;
	}
	public int getKorean() {
		return korean.get();
	}
	public void setKorean(SimpleIntegerProperty korean) {
		this.korean = korean;
	}
	public int getMath() {
		return math.get();
	}
	public void setMath(SimpleIntegerProperty math) {
		this.math = math;
	}
	public int getEnglish() {
		return english.get();
	}
	public void setEnglish(SimpleIntegerProperty english) {
		this.english = english;
	}
	

	
	
	
	

}
