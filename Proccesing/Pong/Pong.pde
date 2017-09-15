Ball ball = new Ball(500, 500, 10, 2, 2);
Paddle paddleR = new Paddle (950, 500, 10, 200);
Paddle paddleL = new Paddle (50, 500, 10, 200);
void setup() {
  size(1000, 1000);
}

void draw() {
  background(255, 255, 255);
  ball.draw(); 
  ball.move();
  paddleR.draw();
  paddleL.draw();
}


void keyPressed() {
  println(key);
  if (key=='w') {
    paddleL.move(Direction.Up);
  } 
  if (key=='s') {
    paddleL.move(Direction.Down);
  } 
  if (keyCode==UP) {
    paddleR.move(Direction.Up);
  }
  if (keyCode==DOWN) {
    paddleR.move(Direction.Down);
  }
}

