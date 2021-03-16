package review;

import java.net.URL;
import java.util.ArrayList;
import java.util.Optional;
import java.util.ResourceBundle;

import java2_9.loginController;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

public class memberlistcontroller implements Initializable {
	
	
	    @FXML
	    private Button btnlogout;

	    @FXML
	    private Label lbllogid;

	    @FXML
	    private Button btnprofile;

	    @FXML
	    private Button btnmodifi;

	    @FXML
	    private Button btndelete;

	    @FXML
	    private Button btnmemberlist;

	    @FXML
	    private TableView<Member> membertable;

	    
		@Override
		public void initialize(URL arg0, ResourceBundle arg1) {
			
			DAO dao = DAO.getDB();
			ObservableList <Member> memberlist = dao.getlistmember();
			
			TableColumn tc = membertable.getColumns().get(0);
			tc.setCellValueFactory( new PropertyValueFactory("id"));
			
			tc = membertable.getColumns().get(1);
			tc.setCellValueFactory( new PropertyValueFactory("name"));
			
			tc = membertable.getColumns().get(2);
			tc.setCellValueFactory( new PropertyValueFactory("lastdate"));
			
			membertable.setItems(memberlist);	
			
		}
	
	// �α׾ƿ� ��ư�� Ŭ�������� 
	public void logoutAction( ) {
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
	
	// ȸ��Ż�� ��ư�� Ŭ�������� 
	public void deleteAction( ActionEvent e   ) {
		
		// ���� ���� ����� 
		Alert alert = new Alert( AlertType.CONFIRMATION );
		
		alert.setContentText(" ���� Ż�� �Ͻðڽ��ϱ�? ");
		alert.setTitle("�˸�");
		alert.setHeaderText(" ȸ��Ż�� ");
		// Ȯ�� �Ǵ� ��� ��ư�� ��������
		Optional<ButtonType> bresult = 	alert.showAndWait();
	
		if( bresult.get() == ButtonType.OK ) { // Ȯ�� �������� 
			// ���� db �޼ҵ� ȣ�� 
			DAO dao = DAO.getDB();
			int result =  dao.delmember(Logincontroller.getinstance().userid());
				
			if( result == 1 ) {
				Alert alert2 = new Alert( AlertType.INFORMATION );
				
				alert2.setContentText(" ���������� Ż�� �Ǿ����ϴ� ");
				alert2.setTitle("�˸�");
				alert2.setHeaderText(" ȸ��Ż�� ");
				alert2.showAndWait();
				logoutAction();
			}
			else {
				Alert alert2 = new Alert( AlertType.INFORMATION );
				
				alert2.setContentText(" �����ͺ��̽� ���� \n �����ڿ��� ���ǹٶ��ϴ� ");
				alert2.setTitle("�˸�");
				alert2.setHeaderText(" ȸ��Ż�� ");
				alert2.showAndWait();
			}
		}else { // ��� ��ư�� �������� 
			return;
		}
	}
	// ȸ����� ��ư Ŭ��������
	public void memberlistAction( ActionEvent e   ) {
	
		try {
			// ���ο� �������� X => ���� ���������� �����ͼ� ���� [ ���̾ƿ� ��ȯ ]
		Stage stage = (Stage)btnlogout.getScene().getWindow();
						// �ش��ư�� �����ϴ� ���� ������â�� ���������� ���� 
		Parent parent = FXMLLoader.load( getClass().getResource("memberlist.fxml"));
		Scene scene = new Scene(parent);
		stage.setScene(scene);
		stage.show();
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	
	// ȸ������ ��ư Ŭ��������
	public void membermodify() {
		
		try {
			// ���ο� �������� X => ���� ���������� �����ͼ� ���� [ ���̾ƿ� ��ȯ ]
		Stage stage = (Stage)btnlogout.getScene().getWindow();
						// �ش��ư�� �����ϴ� ���� ������â�� ���������� ���� 
		Parent parent = FXMLLoader.load( getClass().getResource("memberupdate.fxml"));
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
	
	
  
}
