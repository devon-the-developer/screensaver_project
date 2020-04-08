ParticleSystem ps;

void setup(){
  size(500, 500);
  pixelDensity(displayDensity());
  colorMode(HSB, 255, 255, 255);
  background(0);
  ps = new ParticleSystem();
}

void draw(){
  background(0);
  ps.run();
}
