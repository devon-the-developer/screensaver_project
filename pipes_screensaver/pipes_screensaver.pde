Pipe p1;

void setup(){
  size(500, 500, P3D);
  colorMode(HSB, 255);
  background(0);
  p1 = new Pipe();
}

void draw(){
  ambientLight(255, 255, 255);
  directionalLight(126, 126, 126, 0, 0, -1);
  p1.display();
}
