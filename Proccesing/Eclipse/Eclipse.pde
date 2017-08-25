color green = color(0, 255, 0);
color white = color (255, 255, 255);
color yellow = color (255, 255, 0);
color black = color (0, 0, 0);
color blue = color (135, 206, 250);
CelestialObject sun;
CelestialObject moon;
void setup() {
  size(1000, 1000);
  sun = new CelestialObject(3, -2, 50, yellow, 50, 700);
  moon = new CelestialObject(3, -3, 50, white, 30, 900);
}

void draw() {
  //background(blue);
  setSkyColor(1);
  sun.draw();
  sun.move();
  moon.draw();
  moon.move();
}

void setSkyColor(float percentCovered) {
  float percentExposed = 1.0 - percentCovered;
  float r = 135 * percentExposed;
  float g = 206 * percentExposed;
  float b = 250 * percentExposed;

  background(r, g, b);
}