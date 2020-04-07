Pipe p1;

void setup(){
  size(500, 500, P3D);
  pixelDensity(displayDensity());
  colorMode(HSB, 255);
  background(0);
  p1 = new Pipe();
}

void draw(){

  translate(0, 0, -100);
  rotateX(PI/8);
  rotateY(PI/8);
  p1.display();
  p1.update();
}
