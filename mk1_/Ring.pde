class Ring {
  float radius;
  float orbNumber;
  float aor;
  Ring(float r, float orbNum) {
    radius = r;
    orbNumber = orbNum;
    aor = 360 /orbNum;
  }

  void run() {
    update();
    render();
  }
  
  void render() {
    pushMatrix();
    translate(width/2, height/2);
    for (int i = 0; i<=orbNumber; i++) {
      float a = i * aor;
      float x = sin(degrees(a))*radius;
      float y = cos(degrees(a))*radius;
      pushMatrix();
      translate(x, y);
      noFill();
      stroke(10, 0, 0, 100);
      ellipse(0, 0, 10, 10);
      popMatrix();
    }
    popMatrix();
  }

  void update() {
  }
}
