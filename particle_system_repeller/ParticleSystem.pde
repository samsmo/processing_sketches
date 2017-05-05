class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;
  
  ParticleSystem() {
    particles = new ArrayList<Particle>();
    origin = new PVector(width/2, 100);
  }
  
  void addParticle() {
   float r = random(1);
    if (r < 0.5) {
      particles.add(new Particle(origin.copy()));
    } else {
      particles.add(new Confetti(origin.copy()));
    }
  }
  
   void applyRepeller(Repeller r) {
    for (Particle p: particles) {
      PVector force = r.repel(p);
      p.applyForce(force);
    }
  }
  
  void run() {
   for(int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    if(p.isDead()) {
      particles.remove(i);
    }
   }
  }
}