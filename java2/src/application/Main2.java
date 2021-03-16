package application;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javafx.animation.AnimationTimer;
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;

public class Main2 extends Application {
	// variable
	static int speed = 5;
	static int foodcolor = 0;
	static int width = 20;
	static int height = 20;
	static int foodX = 0;
	static int foodY = 0;
	static int cornersize = 25;
	static List<Corner> snake = new ArrayList<>();
	static Dir direction = Dir.left;
	static boolean gameOver = false;
	static Random rand = new Random();

	public enum Dir {
		left, right, up, down
	}

	public static class Corner {
		int x;
		int y;

		public Corner(int x, int y) {
			this.x = x;
			this.y = y;
		}

	}

	public void start(Stage primaryStage) {
		try {
		

			VBox root = new VBox();
			Canvas c = new Canvas(width * cornersize, height * cornersize);
			GraphicsContext gc = c.getGraphicsContext2D();
			root.getChildren().add(c);

			new AnimationTimer() {
				long lastTick = 0;

				public void handle(long now) {
					if (lastTick == 0) {
						lastTick = now;
						tick(gc);
						return;
					}

					if (now - lastTick > 1000000000 / speed) {
						lastTick = now;
						tick(gc);
					}
				}

			}.start();
			
			Scene scene = new Scene(root, width * cornersize, height * cornersize);

			// control
			scene.addEventFilter(KeyEvent.KEY_PRESSED, key -> {
				if (key.getCode() == KeyCode.W) {
					direction = Dir.up;
				}
				if (key.getCode() == KeyCode.A) {
					direction = Dir.left;
				}
				if (key.getCode() == KeyCode.S) {
					direction = Dir.down;
				}
				if (key.getCode() == KeyCode.D) {
					direction = Dir.right;
				}

			});
			// add start snake parts
			snake.add(new Corner(width / 2, height / 2));
			snake.add(new Corner(width / 2, height / 2));
			snake.add(new Corner(width / 2, height / 2));
			//If you do not want to use css style, you can just delete the next line.
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("SNAKE GAME");
			primaryStage.show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// tick
	public static void tick(GraphicsContext gc) {


		switch (direction) {
		case up:
			snake.get(0).y--;
			if (snake.get(0).y < 0) {
				gameOver = true;
			}
			break;
		case down:
			snake.get(0).y++;
			if (snake.get(0).y > height) {
				gameOver = true;
			}
			break;
		case left:
			snake.get(0).x--;
			if (snake.get(0).x < 0) {
				gameOver = true;
			}
			break;
		case right:
			snake.get(0).x++;
			if (snake.get(0).x > width) {
				gameOver = true;
			}
			break;

		}


		// self destroy
		for (int i = 1; i < snake.size(); i++) {
			if (snake.get(0).x == snake.get(i).x && snake.get(0).y == snake.get(i).y) {
				gameOver = true;
			}
		}
	
		// snake
		for (Corner c : snake) {
			gc.setFill(Color.LIGHTGREEN);
			gc.fillRect(c.x * cornersize, c.y * cornersize, cornersize - 1, cornersize - 1);
			gc.setFill(Color.GREEN);
			gc.fillRect(c.x * cornersize, c.y * cornersize, cornersize - 2, cornersize - 2);

		}
	}


	public static void main(String[] args) {
		launch(args);
	}
}