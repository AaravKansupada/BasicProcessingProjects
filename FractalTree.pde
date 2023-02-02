void setup()
{
  size(400,400);
  background(0);
}

void draw()
{
 stroke(255); 
 translate(200, height);
 branch(100);
}

void branch(float length)
{
  line(0,0,0,-length);
  translate(0, -length);
  if (length > 4){
  push();
  rotate(1.85*PI);
  branch(length * 0.67);
  pop();
  push();
  rotate(-1.85*PI);
  branch(length * 0.67);
  pop();
  }
}
