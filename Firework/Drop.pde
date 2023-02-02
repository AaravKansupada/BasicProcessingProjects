class Particle{
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  boolean isFirework;
  color pcol;
  float life;
  
  Particle(float a, float b, float z, boolean c, color d){
    PVector ab = new PVector(a,b,z);
    position = ab.copy();
    acceleration = new PVector(0,0);
    isFirework = c;
    pcol = d;
    life = 255;
    if(isFirework == true){
       velocity = new PVector(0,random(-15,-5));
    }
    if(isFirework == false){
      velocity = PVector.random3D();
      velocity.mult(random(2,10));
    }
  }
  
  void update(){
    if(isFirework == false){
      velocity.mult(0.85);
      life = life-3;
    }
    position.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
  
  void show(){
    if(isFirework == true){
    strokeWeight(8);
    stroke(255);
     pushMatrix();
     translate(position.x, position.y);
     point(0,0);
     popMatrix();
    }else if(isFirework == false){
      strokeWeight(4);
      stroke(pcol, life);
      pushMatrix();
      translate(position.x, position.y);
      point(0,0);
      popMatrix();
    }
  }
  
  void applyForce(PVector force){
    acceleration.add(force);
  }
  
}
