color FG = #A0B4B7;
color BG = #BFD3D6;
PImage img; 

void setup() {
  size(1584, 396); 
  background(BG);
  img = loadImage("helags.jpg");
  img.resize(1584, 396);
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
