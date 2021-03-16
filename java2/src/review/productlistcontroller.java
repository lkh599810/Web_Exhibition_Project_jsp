package review;

import java.net.URL;
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

public class productlistcontroller implements Initializable {
	
	@FXML
	private Button btnlogout;
	
	@FXML
	private Label lbllogid;
	
	@FXML
	private Button btnmember;
	
	@FXML
	private Button btnproductlist;
	
	@FXML
	private Button btnproductstock;
	
	@FXML
	private Button btnproductabout;
	
	@FXML
	private Button btnproductadd;
	
	@FXML
	private TableView<Product> tableproduct;
	
    @FXML
    private Button btnproductdelete;
	
	@FXML
	void logoutAction(ActionEvent event) {
	
	}
	
	@FXML
	void memberAction(ActionEvent event) {
	
	}
	
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		
		DAO dao = DAO.getDB();
		ObservableList<Product> productList =  dao.productlist();
		
		TableColumn tc = tableproduct.getColumns().get(0);
		tc.setCellValueFactory( new PropertyValueFactory("pcode"));
		
		tc = tableproduct.getColumns().get(1);
		tc.setCellValueFactory( new PropertyValueFactory("pname"));
		
		tc = tableproduct.getColumns().get(2);
		tc.setCellValueFactory( new PropertyValueFactory("pcategory"));
		
		tc = tableproduct.getColumns().get(3);
		tc.setCellValueFactory( new PropertyValueFactory("pquantity"));
		
		tc = tableproduct.getColumns().get(4);
		tc.setCellValueFactory( new PropertyValueFactory("pprice"));
		
		tableproduct.setItems(productList);
	}
	public void deleteAction(  ) {
	
		// ���� ���� ����� 
				Alert alert = new Alert( AlertType.CONFIRMATION );
				
				alert.setContentText(" ���� ���� �Ͻðڽ��ϱ�? ");
				alert.setTitle("�˸�");
				alert.setHeaderText(" ���� ���� ");
				// Ȯ�� �Ǵ� ��� ��ư�� ��������
				Optional<ButtonType> bresult = 	alert.showAndWait();
			
				if( bresult.get() == ButtonType.OK ) { // Ȯ�� �������� 
					
					// ���̺��� ����
					ObservableList< Product > products ; 
					ObservableList<Product> productsdelete;
					
					products = tableproduct.getItems();
					productsdelete = tableproduct.getSelectionModel().getSelectedItems();
					
							// ���̺��� ���õ� ��ǰ�ڵ带 db���� ���� 
							DAO dao = DAO.getDB();
							dao.productdelete( productsdelete.get(0).getPcode() );
							
					// ���̺��� ���� 
					productsdelete.forEach( products :: remove );
			
				}else { // ��� ��ư�� �������� 
					return;
				}
	
		

	}
	
	
	    
	    
	    

}
