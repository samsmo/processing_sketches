class Particle { 
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass = 5;
  
  float damping = 0.95;
  
  float lifeSpan = 255;
  color[] palette = {#40083E, #52104E, #732670, #994E91, #BF75B5};
  int _color;

  // Constructor
  Particle(float x, float y) {
    position = new PVector(x,y);
    velocity = new PVector();
    acceleration = new PVector();
        int r = int(random(palette.length));
    _color = r;
  } 

  void update() { 
    velocity.add(acceleration);
    velocity.mult(damping);
    position.add(velocity);
    acceleration.mult(0);
    
    lifeSpan -= 2;
  }
  
  boolean isDead() {
    if (lifeSpan <= 0) {
      return true;
    } else {
      return false;
    }
  }

  void applyForce(PVector force) {
    PVector f = force.copy();
    f.div(mass);
    acceleration.add(f);
  }

  void display() { 
    noStroke();
    fill(palette[_color], lifeSpan);
    ellipse(position.x,position.y,mass*2,mass*2);
  }
}