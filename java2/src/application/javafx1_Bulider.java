package application;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class javafx1_Bulider extends Application {
	
	@Override
	public void start(Stage ��������) throws Exception {
	
		// ���������� ���۵� fxml ���� ����
		Parent ��Ʈ = FXMLLoader.load( getClass().getResource("������1.fxml"));
			// Parent : ���̾ƿ�[fxml����] ����ִ� Ŭ���� 
		// �� ���� 
		Scene �� = new Scene(��Ʈ);
		
		// �������� ����
		��������.setScene(��);
		��������.setTitle("������ �̿��� javafx");
		��������.setResizable(false); // ũ�� ���� �Ұ� 
		��������.show();
		
		
	}
	
	
	
	public static void main(String[] args) {
		
		launch(args);
		
	}
	
	

}
