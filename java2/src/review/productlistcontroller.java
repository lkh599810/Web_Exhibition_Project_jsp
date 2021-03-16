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
	
		// 삭제 여부 물어보기 
				Alert alert = new Alert( AlertType.CONFIRMATION );
				
				alert.setContentText(" 정말 삭제 하시겠습니까? ");
				alert.setTitle("알림");
				alert.setHeaderText(" 차량 삭제 ");
				// 확인 또는 취소 버튼을 눌렀을때
				Optional<ButtonType> bresult = 	alert.showAndWait();
			
				if( bresult.get() == ButtonType.OK ) { // 확인 눌렀을때 
					
					// 테이블에서 삭제
					ObservableList< Product > products ; 
					ObservableList<Product> productsdelete;
					
					products = tableproduct.getItems();
					productsdelete = tableproduct.getSelectionModel().getSelectedItems();
					
							// 테이블에서 선택된 제품코드를 db에서 삭제 
							DAO dao = DAO.getDB();
							dao.productdelete( productsdelete.get(0).getPcode() );
							
					// 테이블에서 삭제 
					productsdelete.forEach( products :: remove );
			
				}else { // 취소 버튼을 눌렀을때 
					return;
				}
	
		

	}
	
	
	    
	    
	    

}
