color green = color(0, 255, 0);
color white = color (255, 255, 255);
color yellow = color (255, 255, 0);
color black = color (0, 0, 0);
color blue = color (135,206,250);
CelestialObject sun;
CelestialObject moon;
void setup() {
  size(1000, 1000);
  sun = new CelestialObject(5, -5, 50, yellow, 50, 700);
  moon = new CelestialObject(5, -7, 30, white, 30, 750);
}

void draw() {
  background(blue);
  sun.draw();
  sun.move();
  moon.draw();
  moon.move();
}

