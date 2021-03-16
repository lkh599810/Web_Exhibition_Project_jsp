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

public class productaddcontroller implements Initializable {

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
    private TextField txtpcode;

    @FXML
    private TextField txtpname;

    @FXML
    private TextField txtpcategory;

    @FXML
    private TextField txtpprice;

    @FXML
    private TextField txtpquantity;

    @FXML
    void logoutAction(ActionEvent event) {

    }

    @FXML
    void memberAction(ActionEvent event) {

    }
    
    @Override
    public void initialize(URL arg0, ResourceBundle arg1) {
    	// TODO Auto-generated method stub
    }
    public void addAction() {
    	
    	Product temp = new Product( txtpcode.getText(), 
    			txtpname.getText(), 
    			txtpcategory.getText(), 
    			Integer.parseInt(  txtpquantity.getText() ) , 
    			Integer.parseInt( txtpprice.getText() ) );
    	
    	DAO dao = DAO.getDB();
    	int result =  dao.productadd( temp  );
    	
    	if( result == 1 ) { // 정상 실행
    		Alert alert = new Alert( AlertType.INFORMATION );
			alert.setContentText("차량 등록 완료");
			alert.setHeaderText("차량 등록");
			alert.showAndWait();
       		
    	}else { // 중복된 제품코드   
    		Alert alert = new Alert( AlertType.INFORMATION );
			alert.setContentText("동일한 차량코드가 있습니다[ 차량코드 중복불가 ]");
			alert.setHeaderText("차량 등록 ");
			alert.showAndWait();
    	}
    }


}
