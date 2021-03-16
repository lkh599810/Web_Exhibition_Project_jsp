package java2_9;

import java.net.URL;
import java.util.ResourceBundle;

import javax.swing.Action;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.PieChart;
import javafx.scene.chart.XYChart;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

public class RootController implements Initializable {
	
	@FXML
	private Button btnAdd; // ��ư ��ü 
	@FXML
	private TableView<Student> tableView; // ���̺� ��ü
	@FXML
	private Button btnbarChart; // ����׷��� ��ư ��ü
	@FXML
	private Button btndelete; // ���� ��ư ��üü
    @FXML
    private Button btnlogout; // �α׾ƿ� ��ư ��ü 
    
	// ��ü�� ���� ����Ʈ ���� 
	private ObservableList< Student > list ; //  ObservableList   javafx�� ����Ʈ 
	
	// ���� �������� 
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		list = FXCollections.observableArrayList(); // ����Ʈ �޸� �Ҵ� 
	
		TableColumn tc = tableView.getColumns().get(0); // ù��° �� ȣ�� 
		tc.setCellValueFactory( new PropertyValueFactory("name")); // ���� �� ����(  Ŭ����������  )
		tc.setStyle(" -fx-alignment:CENTER;");	// ��� ���� 
		
		tc=tableView.getColumns().get(1);		// �ι�° �� ȣ�� 
		tc.setCellValueFactory( new PropertyValueFactory("korean"));
		tc.setStyle(" -fx-alignment:CENTER;");
		
		tc=tableView.getColumns().get(2);		// �ι�° �� ȣ�� 
		tc.setCellValueFactory( new PropertyValueFactory("math"));
		tc.setStyle(" -fx-alignment:CENTER;");
		
		tc=tableView.getColumns().get(3);		// �ι�° �� ȣ�� 
		tc.setCellValueFactory( new PropertyValueFactory("english"));
		tc.setStyle(" -fx-alignment:CENTER;");
		
		tableView.setItems(list);
		
		// �߰� ��ư Ŭ�������� 
		btnAdd.setOnAction( e -> addAction(e) );
		
		// ����׷��� ��ư Ŭ��������
		btnbarChart.setOnAction( e -> barChartAction(e));
		
		// ���̺��� Ŭ��������
		tableView.setOnMouseClicked( e-> pieChartAction(e) );
		
		// ������ư�� Ŭ�������� 
		btndelete.setOnAction( e -> { 
			
			
			try {
				
				ObservableList<Student> students ;  // ��ü �л� 
				ObservableList<Student> studentseleted; // �����л�
				
				students = tableView.getItems(); // ���̺��� ��ü���� ����Ʈ ���� 
				studentseleted = tableView.getSelectionModel().getSelectedItems(); // Ŭ���� �� ����Ʈ ���� 
				
				studentseleted.forEach( students :: remove  );
							// ���õ� �л��� ��ü�л� �ݺ������� ã�� ���� 
			}
			catch (Exception e2) {
				// TODO: handle exception
			}
			
			
			
		});
		
		// �α׾ƿ� ��ư�� Ŭ��������
		btnlogout.setOnAction( e -> logout(e) );

		
	} // initialize �޼ҵ� �� 
	
	// �α׾ƿ� �޼ҵ� 
	public void logout( ActionEvent e ) {
		
		try {
			
			btnlogout.getScene().getWindow().hide();
			
			Stage stage = new Stage();
			Parent parent = FXMLLoader.load( getClass().getResource("login.fxml"));
			
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			
			stage.setTitle("�л����� ���� ���α׷�");
			stage.setResizable(false);
			stage.show();
			
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	
	// ���� �׷��� �޼ҵ� 
	public void barChartAction( ActionEvent e ) {
		try {
			Stage stage = new Stage();
			Parent parent = FXMLLoader.load( getClass().getResource("barchart.fxml"));
			// fxml ���̾ƿ� ��Ʈ => ��üȭ 
			BarChart ������Ʈ = (BarChart) parent.lookup("#barChart");
		
			// 1.�迭 => 2.�迭�� �߰��� ����Ʈ ���� => 3.������ ����Ʈ�� �迭 �߰� 
			
				// ���� ������ �迭[����] ���� 
				XYChart.Series ����迭 = new XYChart.Series();
				����迭.setName("����"); // �迭 �̸� 
					// ����Ʈ�� ������� ����� ����Ʈ ��� 
					ObservableList �����Ʈ = FXCollections.observableArrayList();
					for( int i = 0 ; i<list.size() ; i++ ) {			
						�����Ʈ.add( new XYChart.Data( list.get(i).getName() ,
								list.get(i).getKorean() )   );
									// XYChart.Data( x�� , y�� )
					}
				// 	����� ����Ʈ => ���뿡 �߰� 
				����迭.setData(�����Ʈ);
			// ���븦 ��Ʈ���߰� 
			������Ʈ.getData().add(����迭);
		//////////////////////////////////////////////////////////////////////////////
				// ���� ������ �迭[����] ���� 
				XYChart.Series ���а迭 = new XYChart.Series();
				���а迭.setName("����");
					// ����Ʈ�� ���м����� ���м�������Ʈ ��� 
					ObservableList ���и���Ʈ = FXCollections.observableArrayList();
					for( int i = 0 ; i<list.size() ; i++ ) {
						���и���Ʈ.add( new XYChart.Data( list.get(i).getName() ,  
								list.get(i).getMath() ));
					}
				// ���м��� ����Ʈ => ���뿡 �߰� 
				���а迭.setData(���и���Ʈ);
			// ���븦 ��Ʈ�� �߰� 
			������Ʈ.getData().add(���а迭);
		//////////////////////////////////////////////////////////////////////////////
				// ���� ������ �迭[����] ����
				XYChart.Series ����迭 = new XYChart.Series();
				����迭.setName("����");
					// ����Ʈ�� ����� ���������Ʈ ��� 
					ObservableList �����Ʈ = FXCollections.observableArrayList();
					for( int i = 0 ; i<list.size() ; i++ ) {
						
						�����Ʈ.add( new XYChart.Data( list.get(i).getName() , 
								list.get(i).getEnglish() ));
					}
			����迭.setData(�����Ʈ);
			������Ʈ.getData().add(����迭);
			
			Button �ݱ��ư = (Button)parent.lookup("#btnclose");
			�ݱ��ư.setOnAction( e3 -> stage.close() );
			
			Scene scene = new Scene(parent);
			stage.setTitle("�л��� ���� �׷���");
			stage.setResizable(false);
			stage.setScene(scene);
			stage.show();
		
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
		
		
	}
	
	
	
	// �߰� �޼ҵ� 
	public void addAction( ActionEvent e  ) {
		try {
			Stage stage = new Stage( StageStyle.UTILITY );
			
			stage.initModality( Modality.WINDOW_MODAL );
			stage.initOwner( btnAdd.getScene().getWindow() );
			
			Parent parent = FXMLLoader.load( getClass().getResource("form.fxml"));
				// parent���� ��ư ȣ�� 
				Button btnformAdd = (Button)parent.lookup("#btnformAdd"); // 1. ��ư ȣ�� �ؼ� ��üȭ
				// �����ư�� �������� 
				btnformAdd.setOnAction( e4 -> {   // 2. ��ư Ŭ�������� 
					
					TextField txtname = (TextField)parent.lookup("#txtname"); // 3. ���� �ؽ�Ʈ�ʵ� ȣ�� ��üȭ 
					TextField txtkorean = (TextField)parent.lookup("#txtkorean");
					TextField txtmath = (TextField)parent.lookup("#txtmath");
					TextField txtenglish = (TextField)parent.lookup("#txtenglish");
			
					list.add( new Student(								// 4. ����Ʈ�� ��� 
							txtname.getText()
							, Integer.parseInt( txtkorean.getText() )   	// 4_2. �� �ؽ�Ʈ�ʵ� �� ȣ�� 
							, Integer.parseInt( txtmath.getText() )
							, Integer.parseInt( txtenglish.getText() )
							) );
					stage.close(); // �������� �ݱ�
				} );
				
				// ��ҹ�ư�� �������� 
				Button btnformcancel = (Button)parent.lookup("#btnformCancel");
				btnformcancel.setOnAction( e5 -> stage.close() );
				
				
				
			Scene scene = new Scene(parent);	
			stage.setTitle("�����Է�");
			stage.setResizable(false);
			stage.setScene(scene);
			stage.show();
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	
	//
	public void pieChartAction( MouseEvent e ) {
		if( e.getClickCount() != 2 ) { // Ŭ���� = 2 [ ����Ŭ�� ] �� �ƴϸ� �޼ҵ� ����  
			return;
		}
		try {
			Stage stage = new Stage();
			Parent parent = FXMLLoader.load( getClass().getResource("piechart.fxml"));

			// ��Ʈ�� ��üȭ
			PieChart ������Ʈ = (PieChart)parent.lookup("#pieChart");
			// ** ���̺� Ŭ���� �������� ��ü�� ����  => Ŭ���� �л� ���� 
			Student temp = tableView.getSelectionModel().getSelectedItem();
			// ������Ʈ�� ���߰�( ����Ʈ ) 
			������Ʈ.setData(  FXCollections.observableArrayList( 
							new PieChart.Data("����" , temp.getKorean() ),
							new PieChart.Data("����", temp.getMath() ),
							new PieChart.Data("����", temp.getEnglish() )
					));
			Button �ݱ��ư = (Button) parent.lookup("#btnclose");
			�ݱ��ư.setOnAction( e3 -> stage.close() );
		
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			stage.setTitle("���κ� ������Ʈ");
			stage.setResizable(false);
			stage.show();
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
		
		
	}
	
	

}
