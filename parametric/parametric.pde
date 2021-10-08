static final int NUM_LINES = 100;

float t;

void setup() {
  background(0);
  size(1200, 1200);
}

void draw () {
  background(0);
  stroke(255,255,255);
  strokeWeight(0.25);

  translate(width/2, height/2);

  for (int i = 0; i < NUM_LINES; i++) {
    line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
  }
  t += .77;
}

float x1(float t) {
  return sin(t/2) * 500 + sin(t) * 2;
}

float y1(float t) {
  return cos(t/2) * 500 + cos(t) * 2;
}

float x2(float t) {
  return sin(t) * 500 + sin(t) * 2;
}

float y2(float t) {
  return cos(t) * 500 + cos(t) * 2;
}
