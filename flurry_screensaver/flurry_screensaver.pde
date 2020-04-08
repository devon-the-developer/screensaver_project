ParticleSystem ps;

void setup(){
  size(500, 500, P2D);
  pixelDensity(displayDensity());
  colorMode(HSB, 255, 255, 255);
  background(0);
  ps = new ParticleSystem();
}

void draw(){
  blendMode(ADD);
  background(0);
  ps.run();
}
