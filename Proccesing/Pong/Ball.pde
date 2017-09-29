 public class Ball {
  int x;
  int y;
  int radius;
  int Xspeed;
  int Yspeed;
  color Color;
  public Ball(int x, int y, int radius, int Xspeed, int Yspeed, color Color){
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.Xspeed = Xspeed; 
    this.Yspeed = Yspeed;
    this.Color = Color;
  }
  
  public void move(){
   x = x+Xspeed; 
   y = y+Yspeed; 
  }
  public void draw(){
   fill(Color); 
   ellipse(x, y, radius*2, radius*2);
   
  }
  

    
    
  
  public boolean isTouchingPaddle(Paddle p){
    return true;
    
  }
  public boolean isTouchingWall(Wall w){
   return true; 
    
  }
}
