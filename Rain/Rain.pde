Drop r;
ArrayList<Drop> list = new ArrayList<Drop>();

void setup(){
  size(800,600);
  background(230,230,250);
  r = new Drop();
  
  for(int i = 0; i < 500; i++){
    list.add(new Drop());
  }
  
}

void draw(){
  background(230,230,250);
  r.display();
  r.fall();
  r.pool();
  r.boat();
  
  for(Drop light : list){
    light.display();
    light.fall();
    light.pool();
    
  }
}
