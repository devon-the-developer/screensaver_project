BeamSystem bs;

void setup(){
  size(500, 500, P2D);
  pixelDensity(displayDensity());
  colorMode(HSB, 255, 255, 255);
  background(0);
  bs = new BeamSystem();
}

void draw(){
  blendMode(ADD);
  background(0);
  bs.run();
}
