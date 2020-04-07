Pipe p1;
Pipe p2;
Pipe p3;

void setup(){
  size(500, 500, P3D);
  pixelDensity(displayDensity());
  colorMode(HSB, 255);
  background(0);
  p1 = new Pipe();
  p2 = new Pipe();
  p3 = new Pipe();
}

void draw(){
  directionalLight(126, 126, 126, 0, 0, -1);
  directionalLight(126, 126, 126, 0, 0, 1);
  translate(0, 0, -100);
  rotateX(PI/8);
  rotateY(PI/8);
  p1.display();
  p1.update();
  p2.display();
  p2.update();
  p3.display();
  p3.update();
}
