final int canvasWidth = 1900;
int bucketYMin = 300;
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
    bucket.riseWater(raindrop);
    raindrop.reset();
  }
  if(raindrop.y >= 1000){
   raindrop.reset(); 
  }
  bucket.draw();
}