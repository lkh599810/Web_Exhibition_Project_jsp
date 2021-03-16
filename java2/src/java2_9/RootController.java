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
	private Button btnAdd; // 버튼 객체 
	@FXML
	private TableView<Student> tableView; // 테이블 객체
	@FXML
	private Button btnbarChart; // 막대그래프 버튼 객체
	@FXML
	private Button btndelete; // 삭제 버튼 객체체
    @FXML
    private Button btnlogout; // 로그아웃 버튼 객체 
    
	// 객체를 담을 리스트 생성 
	private ObservableList< Student > list ; //  ObservableList   javafx용 리스트 
	
	// 폼이 열렸을때 
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		list = FXCollections.observableArrayList(); // 리스트 메모리 할당 
	
		TableColumn tc = tableView.getColumns().get(0); // 첫번째 열 호출 
		tc.setCellValueFactory( new PropertyValueFactory("name")); // 열에 값 저장(  클래스변수명  )
		tc.setStyle(" -fx-alignment:CENTER;");	// 가운데 정렬 
		
		tc=tableView.getColumns().get(1);		// 두번째 열 호출 
		tc.setCellValueFactory( new PropertyValueFactory("korean"));
		tc.setStyle(" -fx-alignment:CENTER;");
		
		tc=tableView.getColumns().get(2);		// 두번째 열 호출 
		tc.setCellValueFactory( new PropertyValueFactory("math"));
		tc.setStyle(" -fx-alignment:CENTER;");
		
		tc=tableView.getColumns().get(3);		// 두번째 열 호출 
		tc.setCellValueFactory( new PropertyValueFactory("english"));
		tc.setStyle(" -fx-alignment:CENTER;");
		
		tableView.setItems(list);
		
		// 추가 버튼 클릭했을때 
		btnAdd.setOnAction( e -> addAction(e) );
		
		// 막대그래프 버튼 클릭했을때
		btnbarChart.setOnAction( e -> barChartAction(e));
		
		// 테이블을 클릭했을때
		tableView.setOnMouseClicked( e-> pieChartAction(e) );
		
		// 삭제버튼을 클릭했을때 
		btndelete.setOnAction( e -> { 
			
			
			try {
				
				ObservableList<Student> students ;  // 전체 학생 
				ObservableList<Student> studentseleted; // 선택학생
				
				students = tableView.getItems(); // 테이블의 전체값을 리스트 연결 
				studentseleted = tableView.getSelectionModel().getSelectedItems(); // 클릭된 값 리스트 연결 
				
				studentseleted.forEach( students :: remove  );
							// 선택된 학생을 전체학생 반복문에서 찾아 삭제 
			}
			catch (Exception e2) {
				// TODO: handle exception
			}
			
			
			
		});
		
		// 로그아웃 버튼을 클릭했을때
		btnlogout.setOnAction( e -> logout(e) );

		
	} // initialize 메소드 끝 
	
	// 로그아웃 메소드 
	public void logout( ActionEvent e ) {
		
		try {
			
			btnlogout.getScene().getWindow().hide();
			
			Stage stage = new Stage();
			Parent parent = FXMLLoader.load( getClass().getResource("login.fxml"));
			
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			
			stage.setTitle("학생점수 관리 프로그램");
			stage.setResizable(false);
			stage.show();
			
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
	}
	
	// 막대 그래프 메소드 
	public void barChartAction( ActionEvent e ) {
		try {
			Stage stage = new Stage();
			Parent parent = FXMLLoader.load( getClass().getResource("barchart.fxml"));
			// fxml 레이아웃 차트 => 객체화 
			BarChart 막대차트 = (BarChart) parent.lookup("#barChart");
		
			// 1.계열 => 2.계열에 추가할 리스트 생성 => 3.생성된 리스트를 계열 추가 
			
				// 국어 성적의 계열[막대] 생성 
				XYChart.Series 국어계열 = new XYChart.Series();
				국어계열.setName("국어"); // 계열 이름 
					// 리스트내 국어성적을 국어성적 리스트 담기 
					ObservableList 국어리스트 = FXCollections.observableArrayList();
					for( int i = 0 ; i<list.size() ; i++ ) {			
						국어리스트.add( new XYChart.Data( list.get(i).getName() ,
								list.get(i).getKorean() )   );
									// XYChart.Data( x축 , y축 )
					}
				// 	국어성적 리스트 => 막대에 추가 
				국어계열.setData(국어리스트);
			// 막대를 차트에추가 
			막대차트.getData().add(국어계열);
		//////////////////////////////////////////////////////////////////////////////
				// 수학 성적의 계열[막대] 생성 
				XYChart.Series 수학계열 = new XYChart.Series();
				수학계열.setName("수학");
					// 리스트내 수학성적을 수학성적리스트 담기 
					ObservableList 수학리스트 = FXCollections.observableArrayList();
					for( int i = 0 ; i<list.size() ; i++ ) {
						수학리스트.add( new XYChart.Data( list.get(i).getName() ,  
								list.get(i).getMath() ));
					}
				// 수학성적 리스트 => 막대에 추가 
				수학계열.setData(수학리스트);
			// 막대를 차트에 추가 
			막대차트.getData().add(수학계열);
		//////////////////////////////////////////////////////////////////////////////
				// 영어 성적의 계열[막대] 생성
				XYChart.Series 영어계열 = new XYChart.Series();
				영어계열.setName("영어");
					// 리스트내 영어성적 영어성적리스트 담기 
					ObservableList 영어리스트 = FXCollections.observableArrayList();
					for( int i = 0 ; i<list.size() ; i++ ) {
						
						영어리스트.add( new XYChart.Data( list.get(i).getName() , 
								list.get(i).getEnglish() ));
					}
			영어계열.setData(영어리스트);
			막대차트.getData().add(영어계열);
			
			Button 닫기버튼 = (Button)parent.lookup("#btnclose");
			닫기버튼.setOnAction( e3 -> stage.close() );
			
			Scene scene = new Scene(parent);
			stage.setTitle("학생별 막대 그래프");
			stage.setResizable(false);
			stage.setScene(scene);
			stage.show();
		
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
		
		
	}
	
	
	
	// 추가 메소드 
	public void addAction( ActionEvent e  ) {
		try {
			Stage stage = new Stage( StageStyle.UTILITY );
			
			stage.initModality( Modality.WINDOW_MODAL );
			stage.initOwner( btnAdd.getScene().getWindow() );
			
			Parent parent = FXMLLoader.load( getClass().getResource("form.fxml"));
				// parent에서 버튼 호출 
				Button btnformAdd = (Button)parent.lookup("#btnformAdd"); // 1. 버튼 호출 해서 객체화
				// 저장버튼을 눌렀을때 
				btnformAdd.setOnAction( e4 -> {   // 2. 버튼 클릭했을때 
					
					TextField txtname = (TextField)parent.lookup("#txtname"); // 3. 각각 텍스트필드 호출 객체화 
					TextField txtkorean = (TextField)parent.lookup("#txtkorean");
					TextField txtmath = (TextField)parent.lookup("#txtmath");
					TextField txtenglish = (TextField)parent.lookup("#txtenglish");
			
					list.add( new Student(								// 4. 리스트에 담기 
							txtname.getText()
							, Integer.parseInt( txtkorean.getText() )   	// 4_2. 각 텍스트필드 값 호출 
							, Integer.parseInt( txtmath.getText() )
							, Integer.parseInt( txtenglish.getText() )
							) );
					stage.close(); // 스테이지 닫기
				} );
				
				// 취소버튼을 눌렀을때 
				Button btnformcancel = (Button)parent.lookup("#btnformCancel");
				btnformcancel.setOnAction( e5 -> stage.close() );
				
				
				
			Scene scene = new Scene(parent);	
			stage.setTitle("점수입력");
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
		if( e.getClickCount() != 2 ) { // 클릭수 = 2 [ 더블클릭 ] 가 아니면 메소드 종료  
			return;
		}
		try {
			Stage stage = new Stage();
			Parent parent = FXMLLoader.load( getClass().getResource("piechart.fxml"));

			// 차트를 객체화
			PieChart 원형차트 = (PieChart)parent.lookup("#pieChart");
			// ** 테이블에 클릭한 아이템을 객체에 저장  => 클릭된 학생 저장 
			Student temp = tableView.getSelectionModel().getSelectedItem();
			// 원형차트에 값추가( 리스트 ) 
			원형차트.setData(  FXCollections.observableArrayList( 
							new PieChart.Data("국어" , temp.getKorean() ),
							new PieChart.Data("수학", temp.getMath() ),
							new PieChart.Data("영어", temp.getEnglish() )
					));
			Button 닫기버튼 = (Button) parent.lookup("#btnclose");
			닫기버튼.setOnAction( e3 -> stage.close() );
		
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			stage.setTitle("개인별 원형차트");
			stage.setResizable(false);
			stage.show();
		}
		catch (Exception e2) {
			// TODO: handle exception
		}
		
		
	}
	
	

}
