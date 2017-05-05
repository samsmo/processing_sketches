class Confetti extends Particle {

  Confetti(PVector origin) {
    super(origin);
  }
  
  void display() {
    float theta = map(position.x,0,width,0,TWO_PI*2);

    rectMode(CENTER);
    noStroke();
    fill(palette[_color], lifeSpan);
    //[full] If we rotate() a shape in Processing, we need to familiarize ourselves with transformations. For more, visit: http://processing.org/learning/transform2d/
    pushMatrix();
    translate(position.x,position.y);
    rotate(theta);
    rect(0,0,8,8);
    popMatrix();
    //[end]
  }
}