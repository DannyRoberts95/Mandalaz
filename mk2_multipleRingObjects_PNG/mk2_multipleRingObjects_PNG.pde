Ring r0, r1, r2, r3, r4, r5, r6;
PImage orb1, orb2, orb3, orb4, eye1;

void setup() {
  size(900, 900);
  //fullScreen(P2D);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  orb1 = loadImage("orb_1.png");
  orb2 = loadImage("orb_2.png");
  orb3 = loadImage("orb_3.png");
  orb4 = loadImage("orb_4.png");
  eye1 = loadImage("eye_1.png");
  //Ring(float _ringRadius, 
  //float _ringRotationRate, 
  //float _orbRadius, 
  //int _orbRotationRate, 
  //PImage _skin) {
  r0 = new Ring(0, -0.2, 1, 60, 0.05, orb4);
  r1 = new Ring(110, 0.35, 6, 50, 0.05, orb4);
  r2 = new Ring(190, -0.45, 24, 18, 0.05, orb4);
  r3 = new Ring(260, 0.45, 18, 40, 0.05, orb4);
  r4 = new Ring(330, -0.65, 28, 18, 0.05, orb4);
  r5 = new Ring(370, 0.65, 15, 12, 0.05, orb4);
  r6 = new Ring(410, -0.65, 10, 6, 0.05, orb4);
}

void draw() {
  fill(360, map(mouseX, 0, width, 0, 100));
  fill(360,100);
  rect(0, 0, width, height);
  r0.run();  
  r1.run();
  r2.run();
  r3.run();
  r4.run();
  r5.run();
  r6.run();
}
