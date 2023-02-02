import peasy.*;

PVector gravity = new PVector(0,0.2);
ArrayList<Firework> list = new ArrayList<Firework>();

PeasyCam cam;

void setup(){
  size(800,600);
  background(0);
  //cam = new PeasyCam(this,500);
}

void draw(){
  float r = random(1,10);
  if(r <= 2){
    list.add(new Firework());
  }
  fill(0,0,0,50);
  strokeWeight(0);
  rect(0,0,width,height);
  
  
   for(Firework blow : list){
    blow.display();
    blow.updateFirework(gravity);
   }
  
}
