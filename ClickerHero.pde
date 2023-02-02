float x = 0;
float y = 0;
int health = 1000;
int time = 0;

void setup(){
  size(600,600);
  background(255);
}
void mousePressed() {
  float distance = dist(mouseX, mouseY, 300, 300);
  float distance2 = dist(mouseX, mouseY, 75, 300);
  float distance3 = dist(mouseX, mouseY, 525, 300);
  if (distance < 125){
  health -= y;
  }
  if (distance2 < 50){
  y = 5;
  }
  if (distance3 < 50){
  y = 10;
  }
}

void keyPressed(){
  health = 1000;
  time = 0;
  rect(100,475,(health*400/1000),50);
}

void draw(){
boolean gameOver = false;
if(health <= 0){
  gameOver = true;
}
if(gameOver == false){
imageMode(CENTER);
background(255);

PFont info;
info = loadFont("AgencyFB-Bold-48.vlw");

PImage hero;
hero = loadImage("howto-resize-pixel-art-photoshop-f.png");
image(hero, 300, 300);

fill(255, 127, 0);
textFont(info);
text("Damage", 50, 50);
text("Time", 450, 50);  
fill(0);
text(health, 75 , 120);
text(time, 475, 120);

rectMode(CENTER);
rect(75,300, 75, 300);
rect(525,300, 75, 300);
fill(255);
text("H", 60, 200);
text("A", 60, 270);
text("R", 60, 340);
text("D", 60, 410);
text("E", 510, 200);
text("A", 510, 270);
text("S", 510, 340);
text("Y", 510, 410);

if(frameCount % 60 == 0){
  time += 1;
}

rectMode(CENTER);
noFill();
rect(300,500,400,50);
fill(255,0,0);
rectMode(CORNER);
rect(100,475,(health*400/1000),50);
}else{
  textSize(48);
  background(255);
  fill(0);
  text("Press any key", 190, 250);
  text("to play again!", 200, 300);
  fill(255,0,0);
  x++;
  rect(0,0,600,0+x);
  fill(0);
  text("Press any key", 190, 250);
  text("to play again!", 200, 300);
}
if(health > 80 && health <= 100){
 textSize(100);
text("FINISH HIM", 125, 300);
}
}
