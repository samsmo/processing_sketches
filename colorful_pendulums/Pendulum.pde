
class Pendulum {
  float r;
  float angle;
  float aVelocity;
  float aAcceleration;
  float gravity;
  PVector origin;
  PVector bob;
  float len;
  color[] palette = {#40083E, #52104E, #732670, #994E91, #BF75B5};
  int ra = int(random(palette.length));
  int _color = ra;
  
  Pendulum(PVector _origin) {
    angle = PI/4;
    aVelocity = 0.0;
    aAcceleration = 0.0;
    len = random(10, height);
    r = random(0.01, 1);
    gravity = 0.01;
    origin = _origin;
    bob = new PVector(origin.x, len);
  }
  
  void update() {
    aAcceleration = -1 * (gravity / r) * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
    aVelocity *= 0.99;
  }
  
  void draw() {
    bob.x = origin.x + len * sin(angle);
    bob.y = origin.y + len * cos(angle);
    stroke(255);
    // line(origin.x, origin.y, bob.x, bob.y);
    fill(palette[_color]);
    noStroke();
    ellipse(bob.x, bob.y, 32, 32);
   
  }
}