//import processing.sound.*;
//SoundFile file;
int wallYOffset = 75;
int wallXOffset = 75;
int player1Score = 0;
int player2Score = 0;

Ball ball = new Ball(500, 500, 10, 5, -2, color(random(255), random(255), random(255)));
Paddle paddleR = new Paddle (950+wallYOffset, 500, 10, 200, color(random(255), random(255), random(255)));
Paddle paddleL = new Paddle (50+wallYOffset, 500, 10, 200, color(random(255), random(255), random(255)));
Wall leftWall = new Wall  (25+wallXOffset, 200-wallYOffset, 3, 775);
Wall topWall = new Wall   (25+wallXOffset, 200-wallYOffset, 955, 3);
Wall rightWall = new Wall (980+wallXOffset, 200-wallYOffset, 3, 778);
Wall bottomWall = new Wall(25+wallXOffset, 975-wallYOffset, 955, 3);
Wall rightScore = new Wall (1200, 200 - wallYOffset, 3, 778);
Wall topScore = new Wall (1200, 200 - wallYOffset, 700, 3);
Wall leftScore = new Wall (1900, 200 - wallYOffset, 3, 778);
Wall bottomScore = new Wall (1200, 975 - wallYOffset, 700, 3);
void setup() {
  size(2000, 1000);
   //file=new SoundFile(this, "ponghit.wav");
}

void draw() {
  background(255, 255, 255);
  textSize(40);
  text("Player 1 Score: " + player1Score, 1250, 200);
  text("Player 2 Score: " + player2Score, 1250, 400);
  ball.draw(); 
  ball.move();
  bottomScore.draw();
  leftScore.draw();
  topScore.draw();
  rightScore.draw();
  paddleR.draw();
  paddleL.draw();
  leftWall.draw();
  topWall.draw();
  rightWall.draw();
  bottomWall.draw();
  //  println(keyCode);
  // println(mouseX +", " , mouseY);

  if (ball.isTouchingPaddle(paddleR)) {
    //file.play();
    println("bounce");
  }
  ball.isTouchingWall(topWall);
}
void keyPressed() {
  //println(key);
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