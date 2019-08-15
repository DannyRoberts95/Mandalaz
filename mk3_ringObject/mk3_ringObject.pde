Ring r0, r1, r2, r3, r4, r5, r6;
PImage orb1;

void setup() {
  size(900, 900, P2D);
  //fullScreen(P2D);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  orb1 = loadImage("orb_1/orb_1_100.png");
  r0 = new Ring(0, 0.75, 1, 60, 0.05, orb1);
  r1 = new Ring(85, -0.25, 25, 25, 0.05, orb1);
  r2 = new Ring(130, 0.15, 22, 20, 0.05, orb1);
  r3 = new Ring(195, -0.1, 18, 45, 0.05, orb1);
  r4 = new Ring(255, -0.25, 6, 20, 0.05, orb1);
  r5 = new Ring(295, -0.35, 6, 18, 0.05, orb1);
  r6 = new Ring(335, -0.45, 6, 16, 0.05, orb1);
}

void draw() {
  
  //fill(360,map(mouseX,0,width,0,100));
  fill(360);
  rect(0,0,width,height);
  
  r0.run();  
  r1.run();
  r2.run();
  r3.run();
  r4.run();
  r5.run();
  r6.run();
}
