float x = 300;
float y = 200;
float size = 100;
float sqd = sqrt((size*size)/2);
float chind = 70;
float headh=sqd+chind;
float eline = y+10;
float eyew = (100-5)/5;
float eyeh = 10;
float pupilsize = 10;
float nosew = eyew;
float nosey = y+sqd/2;
float mouseh = 20;
float mousey = ((y+((sqd+chind)/2)-nosey)/2)+nosey;
float eartop = eline;
float earbottom = nosey;
float earcurve = y;
float earx = x-(sqd)/2;
float earcurvex = earx-10;

void setup() 
  {
  background(255);
  size(600,400);
  }
  
void draw() 
  {
    //cirlce and intersecting lines
    //circle(x,y,size);
    //line(0,y,width,y);
    //line(x,0,x,height);
    
    //square
    rectMode(CENTER);
    rect(x,y,sqd,sqd);
    
    //redraw the lines on top
    //line(0,y,width,y);
    //line(x,0,x,height);
    
    //chin
    arc(x,y+(sqd/2),sqd,chind,0,PI);
    
    //eyesline
    //line(0,eline,width,eline);
    
    //eyes
    ellipse((300-50)+1.5*eyew,eline,eyew,eyeh);
    ellipse((300+50)-1.5*eyew,eline,eyew,eyeh);
    
    //pupils
    circle(x-(eyew*1.125),eline,pupilsize);
    circle(x+(eyew*1.125),eline,pupilsize);
    
    //nose 
    triangle(x-(eyew/2),nosey,x+(eyew/2),nosey,x,eline);
    
    //mouth
    arc(x,mousey,eyew*2,mouseh,0.0,PI);
    arc(x,mousey,eyew*2,mouseh/2,PI,2*PI);
    
    //ears
    beginShape();
    curveVertex(earx, eartop);
    curveVertex(earx, eartop);
    curveVertex(earcurvex, earcurve);
    curveVertex(earcurvex, earcurve+5);
    curveVertex(earx, earbottom);
    curveVertex(earx, earbottom);
    endShape();
  }
