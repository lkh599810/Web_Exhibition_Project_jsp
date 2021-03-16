package review;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

public class signupcontroller implements Initializable {

    @FXML
    private TextField signupid;
    @FXML
    private PasswordField signuppassword;
    @FXML
    private Button btnsignup;
    @FXML
    private Button btnback;
    @FXML
    private TextField signupname;
	
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		// TODO Auto-generated method stub
	}
	
	@FXML  // �ڷΰ��� ��ư�� Ŭ��������  // �޼ҵ� => ������ ����
	public void back( ActionEvent e  ) throws Exception {
		
		btnsignup.getScene().getWindow().hide(); // �ش��ư�� �����ϴ� ������â �����
		
		Parent parent = FXMLLoader.load( getClass().getResource("login.fxml"));
		
		Stage stage = new Stage();
		Scene scene = new Scene(parent);
		stage.setScene(scene);
		stage.show();
	}
	
	@FXML  // ���� ��ư�� Ŭ��������  // �޼ҵ� => ������ ����
	public void signupAction( ActionEvent e  ) throws Exception {
		if( signupid.getText().equals("") || signuppassword.getText().equals("") ||
				signupname.getText().equals("") ) {
			
			// �椡��â ���� A
			Alert alert = new Alert( AlertType.INFORMATION );
				alert.setContentText("�Է� �ȵ� ������ �ֽ��ϴ�");
				alert.setHeaderText("���� ����");
				
				alert.showAndWait();
			return;
			
		}else {
			
			
			Member temp = new Member( signupid.getText() , signuppassword.getText() , signupname.getText());
			
			DAO dao = DAO.getDB();
			int result = dao.setmember(temp);
			
			if( result == 1 ) {
				Alert alert = new Alert( AlertType.INFORMATION );
				alert.setContentText("���� ���� �ϼ̽��ϴ� \n Ȯ�� Ŭ���� �α���â���� �̵��մϴ� ");
				alert.setHeaderText("���� ����");
				alert.showAndWait();
			}
			else {
				Alert alert = new Alert( AlertType.INFORMATION );
				alert.setContentText("���� ���� �ϼ̽��ϴ� \n ������ ���̵� �����մϴ� ");
				alert.setHeaderText("���� ����");
				alert.showAndWait();
			}
	
			// ������ �α��� â���� 
			btnsignup.getScene().getWindow().hide(); // �ش��ư�� �����ϴ� ������â �����
			Parent parent = FXMLLoader.load( getClass().getResource("login.fxml"));
			Stage stage = new Stage();
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			stage.show();
				
		}
	
		
	}

	
	
	
	
	
	
	
	
	
	
	

}
