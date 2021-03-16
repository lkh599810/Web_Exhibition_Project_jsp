package application;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class javafx1_Bulider extends Application {
	
	@Override
	public void start(Stage 스테이지) throws Exception {
	
		// 씬빌더에서 제작된 fxml 파일 연결
		Parent 루트 = FXMLLoader.load( getClass().getResource("씬빌더1.fxml"));
			// Parent : 레이아웃[fxml파일] 담아주는 클래스 
		// 씬 생성 
		Scene 씬 = new Scene(루트);
		
		// 스테이지 구성
		스테이지.setScene(씬);
		스테이지.setTitle("씬빌더 이용한 javafx");
		스테이지.setResizable(false); // 크기 조절 불가 
		스테이지.show();
		
		
	}
	
	
	
	public static void main(String[] args) {
		
		launch(args);
		
	}
	
	

}
