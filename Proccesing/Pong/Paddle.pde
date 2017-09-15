public class Paddle{
 int x;
 int y;
 int length;
 int width;
 public Paddle(int x, int y, int length, int width){
    this.x = x;
    this.y = y;
    this.length = length;
    this.width = width;
    
  }
  
  public void move(Direction d){
    if (d == Direction.Up) {
      y = y-50;
    }
    if (d == Direction.Down) {
      y = y+50;
    }
  }
  public void draw(){
    fill(0,0,0);
    rect(x,y,length,width);
  }
  
  
  
}
