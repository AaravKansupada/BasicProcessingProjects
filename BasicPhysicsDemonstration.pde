PVector location = new PVector(random(height),random(width));
PVector velocity = new PVector(random(-5,5),random(-5,5));
PVector acceleration = new PVector(0,0);
float terminalSpeed = 10;
float x1 =random(800);
float y1 =random(600);
float x2 =random(800);
float y2 =random(600);
float x3 =random(800);
float y3 =random(600);
float x4 =random(800);
float y4 =random(600);
float x5 =random(800);
float y5 =random(600);
float x6 =random(800);
float y6 =random(600);
float x7 =random(800);
float y7 =random(600);
float x8 =random(800);
float y8 =random(600);
float mouseC = 2;


void setup() {
  size(800,600);
  background(255);
}

void humming(){
  fill(#086C0F);
  strokeWeight(0);
  stroke(0);
  circle(x1,y1,40);
  circle(x2,y2,40);
  circle(x3,y3,40);
  circle(x4,y4,40);
  circle(x5,y5,40);
  circle(x6,y6,40);
  circle(x7,y7,40);
  circle(x8,y8,40);
  
  textSize(25);
  fill(0);
  text("The Life of a HummingBird", (width/2)-150, height/2);
  
  
  if((location.x < x1+20)&&(location.x > x1-20)&&(location.y < y1+20)&&(location.y > y1-20)){
    text("FOOD!",400,250);
  }
  if((location.x < x2+20)&&(location.x > x2-20)&&(location.y < y2+20)&&(location.y > y2-20)){
    text("FOOD!",400,250);
  }
  if((location.x < x3+20)&&(location.x > x3-20)&&(location.y < y3+20)&&(location.y > y3-20)){
      text("FOOD!",400,250);
  }
  if((location.x < x4+20)&&(location.x > x4-20)&&(location.y < y4+20)&&(location.y > y4-20)){
      text("FOOD!",400,250);
  }
  if((location.x < x5+20)&&(location.x > x5-20)&&(location.y < y5+20)&&(location.y > y5-20)){
     text("FOOD!",400,250);
  }
  if((location.x < x6+20)&&(location.x > x6-20)&&(location.y < y6+20)&&(location.y > y6-20)){
      text("FOOD!",400,250);
  }
  if((location.x < x7+20)&&(location.x > x7-20)&&(location.y < y7+20)&&(location.y > y7-20)){
      text("FOOD!",400,250);
  }
  if((location.x < x8+20)&&(location.x > x8-20)&&(location.y < y8+20)&&(location.y > y8-20)){
      text("FOOD!",400,250);
  }
}

void display(color x, color y, int bob){
  fill(x);
  stroke(y);
  strokeWeight(5);
  circle(location.x, location.y, bob);
}

void move() {
  velocity.limit(terminalSpeed);
  velocity.add(acceleration);
  location.add(velocity);
}

void bouncer() {
  acceleration.set(0,9.81/60);
  move();
}

void rigidWalls() {
  if(location.x > width){
    velocity.x = -velocity.x;
  }
  if(location.x < 0){
    velocity.x = -velocity.x;
  }
  if(location.y > height){
    velocity.y = -velocity.y;
  }
  if(location.y < 0){
    velocity.y = -velocity.y;
  }
}

void passThroughWalls() {
  if(location.x > width){
    location.add(-800,0);
  }
  if(location.x < 0){
    location.add(800,0);
  }
  if(location.y > height){
    location.add(0,-600);
  }
  if(location.y < 0){
    location.add(0,600);
  }
}

void chaser() {
  PVector mouse = new PVector(mouseX, mouseY);
  mouse.sub(location);
  mouse.normalize();
  println(mouse);
  mouse.mult(1);
  acceleration = mouse.copy();
  move();
}

void mouseClicked(){
  mouseC = mouseC + 1;
}

void draw(){
  if(mouseC == 2){
    background(255);
    display(#1AD8D7,#0AFAF8,40);
    move();
    passThroughWalls();
  }
  if(mouseC == 3){
    background(255);
    display(#3A9009,#52D10B, 40);
    bouncer();
    rigidWalls();
  }
  if(mouseC == 4){
    background(255);
    display(#B210AF,#F519F2, 40);
    chaser();
    passThroughWalls();
  }
  if(mouseC == 5){
    acceleration.set(random(-10,10),random(-10,10));
    background(#19F529);
    humming();
    display(#F00A0A,#F76969, 15);
    move();
    passThroughWalls();
    humming();
  }
  if(mouseC == 6){
    mouseC = 0;  
  }
}
