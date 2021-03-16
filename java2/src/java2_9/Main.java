package java2_9;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

	//학생 점수 관리 프로그램 
public class Main extends Application {
	
	@Override
	public void start(Stage stage ) throws Exception {
		
		Parent root = FXMLLoader.load( getClass().getResource("login.fxml"));
			// Parent : 레이아웃 담아주는 [객체]클래스 

		Scene scene = new Scene(root);
		stage.setScene(scene);
		
		stage.setTitle("학생점수 관리 프로그램");
		stage.setResizable(false);
		stage.show();
	}
	public static void main(String[] args) {
		launch(args);	
	}
}
