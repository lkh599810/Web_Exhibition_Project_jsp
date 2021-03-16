package review;

import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ResourceBundle;

import javax.print.attribute.standard.JobOriginatingUserName;

import application.login;
import java2_9.loginController;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

public class Logincontroller implements Initializable {
	
    @FXML
    private TextField userid;
    @FXML
    private PasswordField userpassword;
    @FXML
    private Button btnlogin;
    @FXML
    private Button btnsignup;
    @FXML
    private ImageView imgloding;
    
    @FXML
    private Button btnfind;
    
    // �α��� ������ �����͸� �ٸ� ��Ʈ�ѷ� �ѱ��
    	// �޼ҵ� �̿�
    private static Logincontroller instance; // �ش� Ŭ������ ���� ��ü
    
    public Logincontroller() { // ������ 
		instance = this;
	}
    
    public static Logincontroller getinstance() {// ��ü ��ȯ �޼ҵ� 
    	return instance;
    }
    public String userid() { // �α��� id ��ȯ���ִ� �޼ҵ�
    	return userid.getText();
    }
    
    
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		imgloding.setVisible(false); // �ε� �̹��� �����
	}
	
	@FXML  // �α��� ��ư�� Ŭ�������� 
	public void loginAction( ActionEvent e  ) {
		imgloding.setVisible(true); // �ε� �̹��� ���̱� 
		DAO dao = DAO.getDB();
		int result =  dao.login(userid.getText() , userpassword.getText() );
		
		if ( result == 1 ) { // �α��� ���� 
			// ���� �������� ���� 
			try {
				
					// �ֱ� ���ӳ�¥ �ο� => db 
					Date date = new Date();
						// ����  [ ���� ���� ] 
						SimpleDateFormat format = new SimpleDateFormat("yy�� MM�� dd�� hh�� mm�� ss��");
					String now = format.format(date);
	
					// db�� ���� 
					dao.lastdate(userid.getText(), now);
						
	
				btnlogin.getScene().getWindow().hide(); // �ش��ư�� �����ϴ� ������â �����
				Parent parent = FXMLLoader.load( getClass().getResource("main.fxml"));
				Stage stage = new Stage();
				Scene scene = new Scene(parent);
				stage.setScene(scene);
				stage.show();
				
			}
			catch (Exception e3) {
				// TODO: handle exception
			}
			
		}
		else if( result == 2) { // �α��� ���� [ db���� ���� ] 
			Alert alert = new Alert( AlertType.INFORMATION );
			alert.setContentText(" ���̵� Ȥ�� ��й�ȣ�� �ٸ��ϴ� ");
			alert.setHeaderText("�α��ν��� ����");
			alert.showAndWait();
		}
		else { // �α��� ���� [ db ���� ]
			Alert alert = new Alert( AlertType.INFORMATION );
			alert.setContentText("�����ͺ��̽� ���� \n �����ڿ��� �������ּ��� ");
			alert.setHeaderText("�α��� ���� ");
			alert.showAndWait();
		}
		
	}
	@FXML  // ȸ������ ��ư�� Ŭ��������  // �޼ҵ� => ������ ����
	public void signupAction( ActionEvent e  ) throws Exception {
		btnlogin.getScene().getWindow().hide(); // �ش��ư�� �����ϴ� ������â �����
		Parent parent = FXMLLoader.load( getClass().getResource("signup.fxml"));
		Stage stage = new Stage();
		Scene scene = new Scene(parent);
		stage.setScene(scene);
		stage.show();
	}
	
	@FXML  // ��й�ȣã�� ��ư�� Ŭ��������  // �޼ҵ� => ������ ����
	public void findAction( ActionEvent e  ) throws Exception {
		
		btnlogin.getScene().getWindow().hide(); // �ش��ư�� �����ϴ� ������â �����
		Parent parent = FXMLLoader.load( getClass().getResource("findpassword.fxml"));
		Stage stage = new Stage();
		Scene scene = new Scene(parent);
		stage.setScene(scene);
		stage.show();
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
