public class Raindrop {
  float speed = 0;
  float y = 0;
  int x = 0;
  int diameter = 0;
  int canvasSize = 0;
  public Raindrop(int x, float y, float speed, int diameter, int canvasSize) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.diameter = diameter;
    this.canvasSize = canvasSize;
  }



  public void draw() {
    fill(0, 217, 252);
    ellipse(x, y, diameter, diameter);
  }
  public boolean waterCaught(Bucket bucket) {
    if (this.y >= bucket.y && this.y <= bucket.y + 100 && this.x >= bucket.x && this.x <= bucket.x +100) {
      return true;
    }
    return false;
  }
  public void reset() {
    int maxX = canvasSize - diameter/2;
    int minX = 0 + diameter/2;
    this.y = 0;
    //this.x = x + ceil(random(1850));
    this.x = minX + ceil(random((maxX - minX)));
  }
  public void move() {
    y = y + speed;
  }
}