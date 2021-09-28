void setup() {
  size(600, 600);
}

void draw() {
  background(#111111);
  stroke(#f1f1f1);
  strokeWeight(8);
  fill(#111111);

  // Your code here
  beginShape();
  vertex(150, 161);
  vertex(180, 160);
  vertex(272, 332);
  vertex(279, 330);
  vertex(403, 170);
  vertex(430, 180);
  vertex(290, 410);
  vertex(288, 410);
  endShape(CLOSE);
  
  save("typography.jpg");
}
