int wallYOffset = 75;
int wallXOffset = 75;

Ball ball = new Ball(500, 500, 10, 5, 2, color(random(255), random(255), random(255)));
Paddle paddleR = new Paddle (950+wallYOffset, 500, 10, 200, color(random(255), random(255), random(255)));
Paddle paddleL = new Paddle (50+wallYOffset, 500, 10, 200, color(random(255), random(255), random(255)));
Wall leftWall = new Wall  (25+wallXOffset, 200-wallYOffset, 3, 775);
Wall topWall = new Wall   (25+wallXOffset, 200-wallYOffset, 955, 3);
Wall rightWall = new Wall (980+wallXOffset, 200-wallYOffset, 3, 778);
Wall bottomWall = new Wall(25+wallXOffset, 975-wallYOffset, 955, 3);
void setup() {
  size(2000, 1000);
}

void draw() {
  background(255, 255, 255);
  ball.draw(); 
  ball.move();

  paddleR.draw();
  paddleL.draw();
  leftWall.draw();
  topWall.draw();
  rightWall.draw();
  bottomWall.draw();
  //  println(keyCode);
  // println(mouseX +", " , mouseY);
}


void keyPressed() {
  println(key);
  if (key=='w') {
    paddleL.move(Direction.Up);
  } else if (key=='s') {
    paddleL.move(Direction.Down);
  } else if (keyCode==UP) {
    paddleR.move(Direction.Up);
  } else if (keyCode==DOWN) {
    paddleR.move(Direction.Down);
  }
}

