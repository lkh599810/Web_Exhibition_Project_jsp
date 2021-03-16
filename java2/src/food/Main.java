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
	
	// �ʵ� 
	static int foodX = 0;  	// Ǫ�� x��
	static int foodY = 0;	// Ǫ�� y�� 
	static int width = 20;	// ����
	static int height = 20; // ����
	static int cornersize = 25;
	static Random rand = new Random(); // ���� ��ü 
	static int foodcolor = 0;
	static int speed = 5;
	static List<Corner> snake = new ArrayList<>();
	static Dir direction = Dir.left;

	public enum Dir { // ������ Ŭ���� 
		left , right , up , down // �ʵ� ���� 
	}
	// �ڳ� Ŭ����[ ���� Ŭ���� ] 
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
		
		// �̺�Ʈ [ �׼� ] 
		//scene.addEventFilter( KeyEvent.KEY_PRESSED, key -> { �ڵ��ۼ� } );
		scene.addEventFilter( KeyEvent.KEY_PRESSED, key -> { 
			
			if( key.getCode() == KeyCode.W ) {	// WŰ ��������
				direction = Dir.up;
			}
			if( key.getCode() == KeyCode.A) { // AŰ ��������
				direction = Dir.left;
			}
			if( key.getCode() == KeyCode.S) { // SŰ ��������
				direction = Dir.down;
			}
			if( key.getCode() == KeyCode.D) { // DŰ ��������
				direction = Dir.right;
			}
		} );
		
		snake.add( new Corner( width/2 , height/2) );
		snake.add( new Corner( width/2, height/2 ));
		snake.add( new Corner( width/2, height/2 ));
		
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	
	// ƽ �޼ҵ� 
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
