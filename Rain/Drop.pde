class Drop{
  
  float x;
  float y;
  float speed;
  float droplength;
  float z;
  float pool;
  
  Drop()
  {
    x = random(0,width);
    z = random(0,20);
    y = random(-500,-50);
    speed = map(z,0,20,4,11);
    droplength = map(z,0,20,10,20);
    pool = 0;
  }
  
  void display()
  {
    fill(138,43,226);
    rect(x,y,2,droplength);
    
    if(y >= (650-pool)){
     y= random(-500,-50);
    }
  }
  
  void fall(){
    y = y + speed;
  }  
  
  void pool(){
    if(y >= (600-pool)){
      pool += 0.5;
    }
    noStroke();
    rect(0,600,800,-pool);
  }
  
  void boat(){
    fill(#895E5E);
    rect(350,-pool+600,-150,-20);
    fill(138,43,226);
  }
  
  }
