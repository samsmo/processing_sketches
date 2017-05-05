Pendulum[] p = new Pendulum[200];

void setup() {
  size(640, 360);
  background(0);

  for (int i = 0; i < p.length; i++) {
    p[i] = new Pendulum(new PVector(random(0, width), random(0, height /2)));
  }
}

void draw() {
  for (int i = 0; i < p.length; i++) {
    p[i].update();
    p[i].draw();
  }

}