package java2_9;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

	//�л� ���� ���� ���α׷� 
public class Main extends Application {
	
	@Override
	public void start(Stage stage ) throws Exception {
		
		Parent root = FXMLLoader.load( getClass().getResource("login.fxml"));
			// Parent : ���̾ƿ� ����ִ� [��ü]Ŭ���� 

		Scene scene = new Scene(root);
		stage.setScene(scene);
		
		stage.setTitle("�л����� ���� ���α׷�");
		stage.setResizable(false);
		stage.show();
	}
	public static void main(String[] args) {
		launch(args);	
	}
}
