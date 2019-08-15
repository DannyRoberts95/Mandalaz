class Ring {
  float ringRadius;
  float ringRotationRate;
  float ringRotationAngle = 0;

  float orbRadius;
  float orbNumber;
  float orbRotationRate;

  PImage skin;

  Ring(float _ringRadius, float _ringRotationRate,float _orbNumber, float _orbRadius, float _orbRotationRate, PImage _skin) {
    ringRadius = _ringRadius;
    ringRotationRate= _ringRotationRate;

    orbRadius = _orbRadius;
    orbNumber = _orbNumber;
    orbRotationRate = _orbRotationRate;

    skin = _skin;
  }

  void run() {
    update();
    render();
  }

  void render() {

    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(ringRotationAngle));
    ringRotationAngle += ringRotationRate;
    
    for (int i = 0; i<orbNumber; i++) {
      float a = i * TAU/orbNumber;
      float x = sin((a))*ringRadius;
      float y = cos((a))*ringRadius;

      pushMatrix();
      translate(x, y);
      tint(360,100,100,100);
      image(skin, 0, 0, orbRadius*2, orbRadius*2);
      popMatrix();
    }
    popMatrix();
  }

  void update() {
  }
}
