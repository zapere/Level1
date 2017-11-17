public class Bucket {  
  int waterLevel = 0;
  int length = 0;
  int height = 0;
  int x = 0;
  int y = 0; 
  int yMin = 0;

  public Bucket(int x, int y, int length, int height, int waterLevel, int yMin) {
    this.x = x;
    this.y = y;
    this.length = length;
    this.height = height;
    this.waterLevel = waterLevel;
    this.yMin = yMin;
  }
  public void move() {
    this.x = mouseX - length/2;
    if (mouseY >= bucketYMin) {
      this.y = mouseY;
    } else {
      this.y = bucketYMin;
    }
  }



  public void riseWater() {
    waterLevel = waterLevel + 1;
    fill(0, 0, 255);
  }
  public void draw() {
    fill(0, 0, 0);
    rect(x, y, height, length);
    fill(0, 217, 252);
    rect(x, y + height - waterLevel, length, waterLevel);
  }
}