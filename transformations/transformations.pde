void setup() {
  size(900,900);
}

void draw() {
  background(#f1f1f1);
  fill(0);
  noStroke();
  rectMode(CENTER);
  
  push();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  rect(0, 0, 50, 700);
  pop();
  
  fill(#aaaaaa);
  translate(width/2, height/2);
  rotate(radians(-frameCount));
  rect(0, 0, 50, 700);

  
  
  
  
}
