package food;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class Main extends Application {
	
	// 필드 
	static int foodX = 0;  	// 푸드 x축
	static int foodY = 0;	// 푸드 y축 
	static int width = 20;	// 가로
	static int height = 20; // 세로
	static int cornersize = 25;
	static Random rand = new Random(); // 랜덤 객체 
	static int foodcolor = 0;
	static int speed = 5;
	static List<Corner> snake = new ArrayList<>();
	static Dir direction = Dir.left;

	public enum Dir { // 열거형 클래스 
		left , right , up , down // 필드 선언 
	}
	// 코너 클래스[ 하위 클래스 ] 
	public static class Corner{
		int x;
		int y;
		public Corner( int x , int y ) {
			this.x = x;
			this.y = y;
		}
		
	}
	
	@Override
	public void start(Stage primaryStage) throws Exception {

		VBox root = new VBox(); 
		
			Canvas c = new Canvas( width * cornersize , height * cornersize );
			GraphicsContext gc = c.getGraphicsContext2D();
		
		root.getChildren().add(c); 
		
		Scene scene = new Scene(root , width*cornersize , height*cornersize);
		
		// 이벤트 [ 액션 ] 
		//scene.addEventFilter( KeyEvent.KEY_PRESSED, key -> { 코드작성 } );
		scene.addEventFilter( KeyEvent.KEY_PRESSED, key -> { 
			
			if( key.getCode() == KeyCode.W ) {	// W키 눌렀을때
				direction = Dir.up;
			}
			if( key.getCode() == KeyCode.A) { // A키 눌렀을때
				direction = Dir.left;
			}
			if( key.getCode() == KeyCode.S) { // S키 눌렀을때
				direction = Dir.down;
			}
			if( key.getCode() == KeyCode.D) { // D키 눌렀을때
				direction = Dir.right;
			}
		} );
		
		snake.add( new Corner( width/2 , height/2) );
		snake.add( new Corner( width/2, height/2 ));
		snake.add( new Corner( width/2, height/2 ));
		
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	
	// 틱 메소드 
	public static void tick( GraphicsContext gc) {
		
		switch( direction) {
		
			case up:
				snake.get(0).y++;
				break;
			case down:
				snake.get(0).y--;
				break;
			case right:
				snake.get(0).x++;
				break;
			case left:
				snake.get(0).x--;
				break;
				
		}
	}

	public static void main(String[] args) {
		launch(args);
	}

}
