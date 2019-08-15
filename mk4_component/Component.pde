class Component {
  PImage skin, skin2;
  PVector loc;
  float size;
  float angle = 0;
  float angleInc = 0.5;
  float scale;
  Component(float _x, float _y, float _size, PImage _skin, PImage _skin2, float _scl) {
    skin = _skin;
    skin2 = _skin2;
    size = _size;
    loc = new PVector(_x, _y);
    scale = _scl;
  }
  void run() {
    render();
  }
  void render() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(radians(angle));
    angle += angleInc;
    image(skin, 0, 0, skin.width*scale, skin.height*scale);
    popMatrix();

    pushMatrix();
    translate(loc.x, loc.y);
    rotate(-radians(angle));
    float segmentYOffset = map(sin(sinOffset), -1, 1, -skin2.height*scale/2, -skin2.height*scale);
    for (int i =0; i<6; i++) {
      pushMatrix();
      float segAor = map(sin(sinOffset), -1, 1, 0, 360);
      rotate(i*radians(60));
      image(skin2, 0, segmentYOffset, skin2.width*scale, skin2.height*scale);
      popMatrix();
    }

    popMatrix();
  }
  void update() {
  }
}
