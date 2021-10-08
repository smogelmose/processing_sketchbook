void setup() {
  size(500,500);
  frameRate(10);
}

void draw() {
  background(#aaaaaa);
  fill(255);
  noStroke();
  
  for (int i = 0; i < 10; i++) {
    println(i);
    fill(random(255));
    ellipse(random(width), random(height),i*10,i*10);
  }
}
