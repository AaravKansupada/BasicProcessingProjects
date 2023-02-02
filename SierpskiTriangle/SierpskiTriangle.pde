void setup() 
{
  size(600,600);
  background(0);
}

float distance(float x1, float y1, float x2, float y2)
{
  float xvalue = sq(x2-x1);
  float yvalue = sq(y2-y1);
  float bob = sqrt(xvalue+yvalue);
  return(bob); 
}

void sierpiski(float ax, float ay, float bx, float by, float cx, float cy)
{
 triangle(ax, ay, bx, by, cx, cy);
 float one = distance(ax, ay, bx, by);
 float two = distance(bx, by, cx, cy);
 float three = distance(cx, cy, ax, ay);
 
 float trionex = abs(ax+bx)/2;
 float trioney = abs(ay+by)/2;
 
 float tritwox = abs(bx+cx)/2;
 float tritwoy = abs(by+cy)/2;
 
 float trithreex = abs(cx+ax)/2;
   float trithreey = abs(cy+ay)/2;
   
 if(one > 10)
 {
   sierpiski(ax,ay,trionex,trioney,trithreex,trithreey);
 }

 if(two > 10)
 {
   sierpiski(trionex,trioney,bx,by,tritwox,tritwoy);
 }
 if(three > 10)
 {
   sierpiski(tritwox,tritwoy,cx,cy,trithreex,trithreey); 
 }
 
}

void draw()
{
  stroke(255);
  fill(0);
 sierpiski(300,0,600,600,0,600); 
}
