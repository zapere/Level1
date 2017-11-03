public class Raindrop {
  int speed = 0;
  int y = 0;
  int x = 0;
  int radius = 0;

  public Raindrop(int x, int y, int speed, int radius) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.radius = radius;
  }

  public void move() {
    y = y + speed;
  }

  public void draw() {
    fill(0, 0, 0);
    ellipse(x, y, radius, radius);

    if (this.x > 2000) 
    {
      this.x = 24;
    }
  }
  public boolean waterCaught(Bucket bucket) {
    if (this.y == bucket.y && this.x >= bucket.x && this.x <= bucket.x +100) {
      return true;
    }
    return false;
  }
  public void reset() {
    this.y = 0;
    this.x = x + ceil(random(2000));
  }
  
}