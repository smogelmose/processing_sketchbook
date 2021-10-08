color black = #000000;
color white = #eeeeee;

void setup() {
  size(500, 500);
 
}
void draw() {
  background(white);
  noFill();
  strokeWeight(mouseX/10);
  stroke(black);
  ellipse(width/2,height/2,400,400);
}
