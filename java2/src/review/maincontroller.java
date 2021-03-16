package review;

import java.net.URL;
import java.util.ResourceBundle;

import java2_9.loginController;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

public class maincontroller implements Initializable {
	
	
    @FXML
    private Button btnlogout;

    @FXML
    private Label lbllogid;

	@Override // fxml �������� �ʱⰪ 
	public void initialize(URL arg0, ResourceBundle arg1) {
		setuserid( Logincontroller.getinstance().userid() ) ;
	}
	// �α��� ���̵� �޴� �޼ҵ� 
	public void setuserid( String userid ) {
		this.lbllogid.setText("�ȳ��ϼ��� "+userid + "��");
	}
	// �α׾ƿ� ��ư�� Ŭ�������� 
	public void logoutAction( ActionEvent e ) {
		lbllogid.getScene().getWindow().hide();
		try {
			Stage stage = new Stage();
			Parent parent = FXMLLoader.load( getClass().getResource("login.fxml"));
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			stage.show();
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	// ȸ������ ��ư�� Ŭ�������� 
	public void memberAction(  ActionEvent e ) {
		try {
				// ���ο� �������� X => ���� ���������� �����ͼ� ���� [ ���̾ƿ� ��ȯ ]
			Stage stage = (Stage)btnlogout.getScene().getWindow();
							// �ش��ư�� �����ϴ� ���� ������â�� ���������� ���� 
			Parent parent = FXMLLoader.load( getClass().getResource("member.fxml"));
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			stage.show();
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	
	// ������� �� Ŭ�������� 
	public void prodcutAction(  ActionEvent e ) {
		try {
				// ���ο� �������� X => ���� ���������� �����ͼ� ���� [ ���̾ƿ� ��ȯ ]
			Stage stage = (Stage)btnlogout.getScene().getWindow();
							// �ش��ư�� �����ϴ� ���� ������â�� ���������� ���� 
			Parent parent = FXMLLoader.load( getClass().getResource("productadd.fxml"));
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			stage.show();
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	
	
	// ������� �� Ŭ�������� 
		public void listAction(  ActionEvent e ) {
			try {
					// ���ο� �������� X => ���� ���������� �����ͼ� ���� [ ���̾ƿ� ��ȯ ]
				Stage stage = (Stage)btnlogout.getScene().getWindow();
								// �ش��ư�� �����ϴ� ���� ������â�� ���������� ���� 
				Parent parent = FXMLLoader.load( getClass().getResource("productlist.fxml"));
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
			}
			catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
	
	
}
