package java2_9;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Student {
	
	// �ʵ� 
	SimpleStringProperty name; 
	SimpleIntegerProperty korean;
	SimpleIntegerProperty math;
	SimpleIntegerProperty english;

	// ������ 
	public Student() {
		this.name = new SimpleStringProperty();
		this.korean = new SimpleIntegerProperty();
		this.math = new SimpleIntegerProperty();
		this.english = new SimpleIntegerProperty();
	}
	
	// ������ 
	public Student( String name , int korean , int math , int english) {
		this.name = new SimpleStringProperty( name);
		this.korean = new SimpleIntegerProperty( korean);
		this.math = new SimpleIntegerProperty(math);
		this.english = new SimpleIntegerProperty(english);
	}
	
	// �ʵ�  ��ȯ=get / ����=set �޼ҵ�
	// ������Ŭ�� => �ҽ� 
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
