
class Wave {
  float startAngle;
  float angleVel;
  PVector minBounds;
  PVector maxBounds;
  
  Wave(float vel, PVector _minBound, PVector _maxBound) {
    startAngle = 0;
    angleVel = vel;
    minBounds = _minBound;
    maxBounds = _maxBound;
  }
  
  void display() {
  
    float angle = startAngle;
    startAngle += random(0.02, 0.05);
  
    for (float x = minBounds.x; x <= maxBounds.x; x += 5) {
      float y = map(sin(angle),-1,1, minBounds.y, maxBounds.y);
      noStroke();
      fill(0, 50);
      ellipse(x,y,50,50);
      angle += angleVel;
    }
  }
}