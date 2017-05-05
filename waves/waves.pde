Wave[] waves = new Wave[1];

void setup() {
  size(800,300);
  
  for (int i = 0; i< waves.length; i++) {
    float top = i*10+100;
    waves[i] = new Wave(random(0.3,25), new PVector(0, top), new PVector(width, top+50));
  }
}

void draw() {
  background(255);

  for (int x = 0; x < waves.length; x++) {
    waves[x].display();
  }
}