final int canvasWidth = 1900;
int bucketYMin = 300;
int drops = 0;
int lives = 5;
Raindrop raindrop = new Raindrop(50, 0, 10, 40, canvasWidth);
//1st is x, 4th is radius
Bucket bucket = new Bucket(50, 750, 100, 100, 0, bucketYMin);
// 1st is length, 2nd is y, 3rd is x, 4th is length, 5th is unknown  
void setup() {
  size(1900, 1000);
}

void draw() {
  background(255, 255, 255);
  rect(0, 300, 10000, 1);
  raindrop.move();
  raindrop.draw();
  bucket.move();
  if (raindrop.waterCaught(bucket)) {
    bucket.riseWater();
    raindrop.reset();
    raindrop.speed = raindrop.speed + 0.2; 
    drops = drops + 1;
    if (bucket.waterLevel==1) {
      fill(0, 0, 255);
      rect(bucket.x, bucket.y + 90, bucket.length, 10);
    }
  }
  if(drops >= 75){
   textSize(50);
   fill(64, 219, 188);
   text("YOU WIN!!!", 500, 200);
    
  }
  if (raindrop.y >= 1000) {
    raindrop.reset();
    lives = lives - 1;
  }
  if(lives <= 0){
    textSize(50);
   fill(64, 219, 188);
   text("YOU LOSE ;(", 500, 200);
  }
  bucket.draw();
}