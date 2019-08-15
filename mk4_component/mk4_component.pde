Ring r0;
Component c1;
PImage orb1;
PImage segment1;

float sinOffset = random(100000);
float sinInc = 0.045;



void setup() {
  size(800, 800);
  //fullScreen(P2D);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  orb1 = loadImage("orb_1/50.png");
  segment1 = loadImage("segment_1/50.png");

  //Ring(float _ringRadius, 
  //float _ringRotationRate, 
  //float _orbRadius, 
  //int _orbRotationRate, 
  //PImage _skin) {

  c1 = new Component(width/2, height/2, 100, orb1, segment1, 0.66);

  //r0 = new Ring(0, 0.75, 1, 60, 0.05, orb1);
}

void draw() {
  fill(360, map(mouseX, 0, width, 0, 100));
  fill(360, 100);
  rect(0, 0, width, height);

  sinOffset += sinInc;
  c1.run();
}
