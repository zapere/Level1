Ball ball = new Ball(500, 500, 10, 2, 2, color(random(255),random(255),random(255)));
Paddle paddleR = new Paddle (950, 500, 10, 200, color(random(255),random(255),random(255)));
Paddle paddleL = new Paddle (50, 500, 10, 200, color(random(255),random(255),random(255)));
Wall wall = new Wall(25, 200, 3, 300);
void setup() {
  size(2000, 1000);
}

void draw() {
  background(255, 255, 255);
  ball.draw(); 
  ball.move();
  if(keyPressed){
   keyPressed(); 
  }
  paddleR.draw();
  paddleL.draw();
  wall.draw();
  println(mouseX +", " , mouseY);
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

