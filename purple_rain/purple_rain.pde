ArrayList<Particle> particles;
PVector wind = new PVector(random(-3, 3), 0.0);
void setup() {
  size(800, 400);
  
  particles = new ArrayList<Particle>();

}

void draw() {
  background(0);
  particles.add(new Particle(random(0, width), 0));
  
  for(int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    PVector gravity = new PVector(0.0, random(0.5, 5));
    p.applyForce(gravity);
    p.applyForce(wind);
    p.update();
    p.display();
    if(p.isDead()) {
      particles.remove(i);
    }
  }
}