Pipe p1;
Pipe p2;

void setup(){
  size(500, 500, P3D);
  colorMode(HSB, 255);
  background(0);
  p1 = new Pipe();
  p2 = new Pipe();
}

void draw(){
  ambientLight(255, 255, 255);
  directionalLight(126, 126, 126, 0, 0, -1);
  translate(0, 0, -100);
  rotateX(PI/8);
  p1.display();
  p1.update();
  p2.display();
  p2.update();
}
