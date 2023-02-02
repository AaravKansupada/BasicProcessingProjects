float x = 200;
float y = 200;
float radius = 50;
float diameter = radius*2;
float second = radius*0.72;
float minute = radius *.6;
float hour = radius*0.54;

void setup()
{
  size(600,600);
  background(255);
  stroke(0);
}

void draw() 
{
  fill(100);
  noStroke();
  ellipse(x, y, diameter, diameter);
  
  float x = 200;
float y = 200;
float radius = 50;
float diameter = radius*2;
float second = radius*0.72;
float minute = radius *.6;
float hour = radius*0.54;

float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  stroke(255);
  strokeWeight(1);
  line(x, y, x + cos(s) * second, y + sin(s) * second);
  strokeWeight(2);
  line(x, y, x + cos(m) * minute, y + sin(m) * minute);
  strokeWeight(4);
  line(x, y, x + cos(h) * hour, y + sin(h) * hour);
 
 
  
  endShape();
 
}
