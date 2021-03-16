package java2_9;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class loginController implements Initializable {
	
	@FXML
	private Button btnlogin;
	
	@FXML
	private Button btnsignup;
	
	@FXML
	private TextField id;
	
	@FXML
	private PasswordField password;
	
	private ObservableList<Member> memberlist;
	
	
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		
		memberlist = FXCollections.observableArrayList(); // ����Ʈ �޸� �Ҵ� 
		
		btnlogin.setOnAction( e -> login( e ));
		btnsignup.setOnAction( e -> signup( e ));
		
	}
	// �α��� �޼ҵ� 
	public void login( ActionEvent e  ) {
		try {
			
			for( int i = 0 ; i<memberlist.size(); i++ ) {
				if( id.getText().equals( memberlist.get(i).getId() ) && 
						password.getText().equals( memberlist.get(i).getPassword())  ) {
					
					btnlogin.getScene().getWindow().hide(); // �α��� ������ �ش� �������� �ݱ�
					
					Stage stage = new Stage();
					Parent root = FXMLLoader.load( getClass().getResource("root.fxml"));
					// Parent : ���̾ƿ� ����ִ� [��ü]Ŭ���� 
					Scene scene = new Scene(root);
					stage.setScene(scene);
					stage.setTitle("�л� ���� ����");
					stage.setResizable(false);
					stage.show();	
				}
			}
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	// ȸ������ �޼ҵ� 
		public void signup( ActionEvent e  ) {
			try {
			
					Stage stage = new Stage();
					
					Parent parent = FXMLLoader.load( getClass().getResource("Sign.fxml"));
					
					Button btnsignup = (Button)parent.lookup("#btnsinup");
					
					btnsignup.setOnAction( e4-> {  
						
						TextField txtid = (TextField) parent.lookup("#txtid");
						TextField txtpassword = (TextField) parent.lookup("#txtpassword");
						
						memberlist.add( new Member(
								txtid.getText(), 
								txtpassword.getText()
								));
						
						stage.close();			
			
					});
					
					// ��ҹ�ư�� �������� 
					Button btnformcancel = (Button)parent.lookup("#btncancel");
					btnformcancel.setOnAction( e5 -> { stage.close();  } );
					
					// Parent : ���̾ƿ� ����ִ� [��ü]Ŭ���� 
					Scene scene = new Scene(parent);
					stage.setScene(scene);
					stage.setTitle("ȸ������");
					stage.setResizable(false);
					stage.show();
					
			}
			catch (Exception e2) {
				// TODO: handle exception
			}
			
		}
	

}
