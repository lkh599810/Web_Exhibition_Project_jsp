package application;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

public class javafx1 extends Application {
	
	@Override // start 메소드 오버라이딩 
	public void start(Stage 화면 ) throws Exception {
		
		// 레이아웃 구성 
		VBox 레이아웃 = new VBox(); // 1. 레이아웃 생성 
		레이아웃.setPrefWidth(350);	// 가로 폭 설정
		레이아웃.setPrefHeight(150);	// 세로 폭 설정
		레이아웃.setAlignment(Pos.CENTER); // 컨트롤 가운데 정렬
		레이아웃.setSpacing(20);  		// 컨트롤 수직 간격
		
			//  레이블 컨트롤 구성 
			Label 레이블 = new Label();  // 2. 컨트롤 생성 
			레이블.setText("안녕하세요 javafx 입니다"); // 3. 컨트롤 텍스트 설정 
			레이블.setFont( new Font(20) ); // 텍스트 크기 설정 
			
			// 버튼 컨트롤 구성 
			Button 버튼 = new Button();
			버튼.setText("확인");
			버튼.setOnAction( e->Platform.exit() );
			
		// 레이아웃에 컨트롤 추가 
		레이아웃.getChildren().add(레이블); // 4.레이아웃에 해당 컨트롤 추가
		레이아웃.getChildren().add(버튼);
		
		// 씬과 스테이지 구성 
		Scene 씬 = new Scene(레이아웃); // 5. 씬 생성 => 씬에 레이아웃 설정  
		화면.setScene(씬);			// 6. 씬을 => 스테이지 설정 
		화면.setTitle("javafx 첫번째 실행 ");
		화면.show();					// 7. 스테이지 실행 
		
		
	}
	public static void main(String[] args) {
		
		launch(args); // fx 실행 => start 메소드 호출 
		
	}
	
	// 1. 해당 클래스에 extends Application 클래스로 부터 상속 받기 
	// 2. launch(); 사용해서 start메소드 호출 
	// 3. start 메소드에 코드 작성 
		// 1. start( Stage 객체명 )
			// Stage 클래스를 이용한 스테이지 구성 
			// 객체명.show(); 스테이지 호출 
	// 4. javafx 구조 
		// Stage[윈도우창] => scene[윈도우창내에서 구성] => layout[배치구성] => cotrols[상자,텍스트,버튼]
	
	
}
