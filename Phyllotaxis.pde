


int n = 1;
int c = 5;

void setup()
{
 size(1300,750);
 background(0); 
}

void draw()
{
translate(600,375);
float theta = radians(n * 137.5);
float r = c * sqrt(n);
float x = r * cos(theta);
float y = r * sin(theta);

  fill(255);
  ellipse(x,y,6,6);
  
  n = n + 1;
  
}
