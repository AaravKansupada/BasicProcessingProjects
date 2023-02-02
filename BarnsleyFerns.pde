float x = 0;
float y = 0;

void setup() {
  size(600,600);
  background(0);
}

void nextPoint(){
  float nextX = 0;
  float nextY = 0;
  
  float prob = random(100);
  
  if (prob < 2) {
  nextX = 0;
  nextY = 0.16 * y;
  } else if (prob < 86) {
  nextX = 0.85 * x + 0.04 * y;
  nextY = -0.04 * x + 0.85 * y + 1.6;
  } else if (prob < 93) {
  nextX = 0.2 * x + -0.26 * y;
  nextY = 0.23 * x + 0.22 * y + 1.6;
  } else {
  nextX = -0.15 * x + 0.28 * y;
  nextY = 0.26 * x + 0.24 * y + 0.44;
  }
  
  x = nextX;
  y = nextY;
}

void drawPoint(){
 stroke(0,255,0);
  strokeWeight(2);
  float px = map(x, -2.1820, 2.6558, 0, width);
  float py = map(y, 0, 9.998, height, 0);
  point(px,py);
}

void draw() {
  frameRate(144);
  for (int loop = 0; loop < 100; loop++);
  drawPoint();
  nextPoint();
}
