Raindrop raindrop = new Raindrop(50, 0, 10, 40);
//1st is x, 4th is radius
Bucket bucket = new Bucket(50, 750, 100, 100, 50, );
// 1st is length, 2nd is y, 3rd is x, 4th is length, 5th is unknown  
void setup() {
  size(2000, 1000);
}

void draw() {
  background(255, 255, 255);
  raindrop.move();
  raindrop.draw();
  bucket.draw();
  bucket.move();
  if(raindrop.waterCaught(bucket)){
   raindrop.reset(); 
  }
}