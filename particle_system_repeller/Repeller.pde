class Repeller {
  PVector location;
  float r = 40;
  float G = 1000;
  
  Repeller(float x, float y) {
    location = new PVector(x, y);
  }
  
  void display() {
    stroke(255);
    fill(255);
    ellipse(location.x, location.y, r, r);
  }
  
  PVector repel(Particle p) {
    PVector dir = PVector.sub(location, p.position);
    float d = dir.mag();
    dir.normalize();
    
    float force = -1 * G / (d * d);
    dir.mult(force);
    return dir;
  }
}