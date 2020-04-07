class Pipe {
  
  PVector loc, vel, acc;
  PVector origin;
  
  float size;
  
  Pipe(){
    origin = new PVector(width/2, height/2, 0);
    loc = new PVector(origin.x, origin.y, origin.z);
    vel = new PVector();
    acc = new PVector();
    
    size = 25;
  }
  
  void display() {
    pushMatrix();
    translate(loc.x, loc.y, loc.z);
    noStroke();
    box(size);
    popMatrix();
  }
  
  
}
