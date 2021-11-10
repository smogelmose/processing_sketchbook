color FG = #111111;
color BG = #f1f1f1;
PImage img; 

void setup() {
  size(700, 700); 
  background(BG);
  img = loadImage("smogelmose.jpg");
  img.resize(700, 700);
}

void draw() {
  background(BG);
  fill(FG);
  noStroke();
  float ratio = float(height)/float(width);
  float tilesX = map(mouseX, 0, width, 10, 100);
  float tilesY = ratio * tilesX;
  float tileSize = width / tilesX;
  for (int y = 0; y < img.height; y += tileSize) {
    for (int x = 0; x < img.width; x += tileSize) {
      color c = img.get(x, y);
      float b = map(brightness(c), 0, 255, 1, 0);
      pushMatrix();
      translate(x, y);
      rect(0, 0, b * tileSize, b * tileSize);
      popMatrix();
    }
  }
}
