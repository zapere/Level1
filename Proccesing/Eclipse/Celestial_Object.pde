public class CelestialObject {
  int Xspeed;
  int Yspeed;
  int radius;
  color Color;
  int X;
  int Y;
  public CelestialObject(int Xspeed, int Yspeed, int radius, color Color, int X, int Y) {
    this.Xspeed = Xspeed;
    this.Yspeed = Yspeed;
    this.radius = radius;
    this.Color = Color;
    this.X = X;
    this.Y = Y;
  }
  public void move() {
    X = X+Xspeed;
    Y = Y+Yspeed;
  }
  public void draw() {
    fill(Color);
    ellipse(X, Y, radius*2, radius*2);
  }

  float getPercentCovered(CelestialObject other) {
    float dx = this.X - other.X;
    float dy = this.Y - other.Y;
    float distance = sqrt(dx * dx + dy * dy); 
    if(distance>other.radius + this.radius){
      return 0.0;
      
    }
    if(distance==0){
     return 1.0; 
    }
    return 1.0 - distance/(other.radius+this.radius);
  }
}