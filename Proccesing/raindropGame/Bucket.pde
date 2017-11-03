public class Bucket {  
  int waterLevel = 0;
  int length = 0;
  int height = 0;
  int x = 0;
  int y = 0; 
  

  public Bucket(int x, int y, int length, int height, int waterLevel) {
    this.x = x;
    this.y = y;
    this.length = length;
    this.height = height;
    this.waterLevel = waterLevel;
    
  }
  public void move() {
    this.x = mouseX ;
  }

  public void draw() {
    rect(x, y, height, length);
  }
  
  public boolean riseWater(Raindrop raindrop) {
    if (raindrop.waterCaught(this)) {
      
      return true;
    }
    return false;
  }
  
}
 