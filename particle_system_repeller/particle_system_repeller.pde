ArrayList<ParticleSystem> ps;
Repeller repeller;

void setup() {
  size(800, 400);

  ps = new ArrayList<ParticleSystem>();
  repeller = new Repeller(width/2, height/2);
  for ( int i = 0; i < 1; i++) {
    ps.add(new ParticleSystem());
  }

}

void draw() {
  background(0);
  
  for(ParticleSystem p: ps) {
    p.addParticle();
    p.applyRepeller(repeller);
    p.run();
  }
  
  repeller.display();
}