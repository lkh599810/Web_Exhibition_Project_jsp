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
	
	@Override // start �޼ҵ� �������̵� 
	public void start(Stage ȭ�� ) throws Exception {
		
		// ���̾ƿ� ���� 
		VBox ���̾ƿ� = new VBox(); // 1. ���̾ƿ� ���� 
		���̾ƿ�.setPrefWidth(350);	// ���� �� ����
		���̾ƿ�.setPrefHeight(150);	// ���� �� ����
		���̾ƿ�.setAlignment(Pos.CENTER); // ��Ʈ�� ��� ����
		���̾ƿ�.setSpacing(20);  		// ��Ʈ�� ���� ����
		
			//  ���̺� ��Ʈ�� ���� 
			Label ���̺� = new Label();  // 2. ��Ʈ�� ���� 
			���̺�.setText("�ȳ��ϼ��� javafx �Դϴ�"); // 3. ��Ʈ�� �ؽ�Ʈ ���� 
			���̺�.setFont( new Font(20) ); // �ؽ�Ʈ ũ�� ���� 
			
			// ��ư ��Ʈ�� ���� 
			Button ��ư = new Button();
			��ư.setText("Ȯ��");
			��ư.setOnAction( e->Platform.exit() );
			
		// ���̾ƿ��� ��Ʈ�� �߰� 
		���̾ƿ�.getChildren().add(���̺�); // 4.���̾ƿ��� �ش� ��Ʈ�� �߰�
		���̾ƿ�.getChildren().add(��ư);
		
		// ���� �������� ���� 
		Scene �� = new Scene(���̾ƿ�); // 5. �� ���� => ���� ���̾ƿ� ����  
		ȭ��.setScene(��);			// 6. ���� => �������� ���� 
		ȭ��.setTitle("javafx ù��° ���� ");
		ȭ��.show();					// 7. �������� ���� 
		
		
	}
	public static void main(String[] args) {
		
		launch(args); // fx ���� => start �޼ҵ� ȣ�� 
		
	}
	
	// 1. �ش� Ŭ������ extends Application Ŭ������ ���� ��� �ޱ� 
	// 2. launch(); ����ؼ� start�޼ҵ� ȣ�� 
	// 3. start �޼ҵ忡 �ڵ� �ۼ� 
		// 1. start( Stage ��ü�� )
			// Stage Ŭ������ �̿��� �������� ���� 
			// ��ü��.show(); �������� ȣ�� 
	// 4. javafx ���� 
		// Stage[������â] => scene[������â������ ����] => layout[��ġ����] => cotrols[����,�ؽ�Ʈ,��ư]
	
	
}
