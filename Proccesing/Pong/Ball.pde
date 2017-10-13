public class Ball {
  int x;
  int y;
  int radius;
  int Xspeed;
  int Yspeed;
  color Color;
  public Ball(int x, int y, int radius, int Xspeed, int Yspeed, color Color) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.Xspeed = Xspeed; 
    this.Yspeed = Yspeed;
    this.Color = Color;
  }

  public void move() {
    x = x+Xspeed; 
    y = y+Yspeed;
  }
  public void draw() {
    fill(Color); 
    ellipse(x, y, radius*2, radius*2);
  }





  public boolean isTouchingPaddle(Paddle p) {
    if (this.x >= p.x && this.y >= p.y && this.y >= p.y - 200) {
     
      //      this.Xspeed = this.Xspeed *(-1);
      return true;
    } else {
      return false;
    }
    //    if (this.x <= paddleL.x +10 && this.y >= paddleL.y && this.y >= paddleL.y - 200) {
    //      println("bounce");
    //      this.Xspeed = this.Xspeed *(-1);
    //    } 
    //    return true;
  }

  public boolean isTouchingWall(Wall w) {
    if (this.y - this.radius <= topWall.y + w.width) {
      this.Yspeed = this.Yspeed * (-1);
    }
    if (this.y - this.radius >= bottomWall.y - w.width) {
      this.Yspeed = this.Yspeed * (-1);
    }
    if (this.x - this.radius >= rightWall.x + w.width) {
      player1Score = player1Score +1; 
      this.x = 512;
    }
    if (this.x + this.radius <= leftWall.x - w.width) {
    }

    return true;
  }
}

