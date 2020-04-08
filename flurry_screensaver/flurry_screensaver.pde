Particle p1;

void setup(){
  size(500, 500);
  colorMode(HSB, 255, 255, 255);
  background(0);
  p1 = new Particle();
}

void draw(){
  p1.display();
}
