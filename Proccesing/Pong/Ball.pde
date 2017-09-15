public class Ball {
  int x;
  int y;
  int radius;
  int Xspeed;
  int Yspeed;
  public Ball(int x, int y, int radius, int Xspeed, int Yspeed){
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.Xspeed = Xspeed; 
    this.Yspeed = Yspeed;
  }
  
  public void move(){
   x = x+Xspeed; 
   y = y+Yspeed; 
  }
  public void draw(){
   fill(0,0,0); 
   ellipse(x, y, radius*2, radius*2);
  }
  

    
    
  
  public boolean isTouchingPaddle(Paddle p){
    return true;
    
  }
  public boolean isTouchingWall(Wall w){
   return true; 
    
  }
}
