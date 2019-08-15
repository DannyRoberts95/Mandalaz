Ring r1;

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100, 100);
  r1 = new Ring(100, 36);
}

void draw() {
  background(360);
  r1.run();
  
}
