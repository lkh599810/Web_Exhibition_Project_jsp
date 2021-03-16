package application;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class login extends Application {
	
	@Override
	public void start(Stage stage) throws Exception {
		
		//1. fxml 연결 
		Parent root = FXMLLoader.load( getClass().getResource("login.fxml"));
		
		//2. 씬 구성 
		Scene scene = new Scene(root);
		
		//3. 스테이지 구성 
		stage.setScene(scene);
		stage.setTitle("Member login");
		stage.setResizable(false);
		stage.show();
		
	}
	
	public static void main(String[] args) {
		launch(args);
	}

}
