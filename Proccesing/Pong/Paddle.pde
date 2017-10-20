public class Paddle{
 int x;
 int y;
 int length;
 int width;
 color Color; 
 public Paddle(int x, int y, int length, int width, color Color){
    this.x = x;
    this.y = y;
    this.length = length;
    this.width = width;
    this.Color = Color;
    
  }
  
  public void move(Direction d){
    if (d == Direction.Up) {
      y = y-75;
    }
    if (d == Direction.Down) {
      y = y+75;
    }
  }
  public void draw(){
    fill(Color);
    rect(x,y,length,width);
  }
  public void changeColor(){
   this.Color = color(random(255), random(255), random(255));
    
  }
  
  
}