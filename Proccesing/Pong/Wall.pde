public class Wall {
  int x;
  int y;
  int length;
  int width;

  public Wall(int x, int y, int length, int width) {
    this.x = x;
    this.y = y; 
    this.length = length;
    this.width = width;
  }


  public void draw() {
    fill(0, 0, 0);
    rect(x, y, length, width);
  }
}

