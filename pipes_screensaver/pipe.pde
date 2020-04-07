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
    sphere(size);
    popMatrix();
  }
  
  void update() {
    acc = direction();
    vel.add(acc);
    loc.add(vel);
    
    acc.mult(0);
  }
  
  PVector direction(){
    //controls movement direction
    PVector setDir;
    int dir = int(random(1, 6));
    switch(dir) {
      case 1: //Up
        setDir = new PVector(0, -1, 0);
        break;
      case 2: //Down
        setDir = new PVector(0, 1, 0);
        break;
      case 3: //Left
        setDir = new PVector(-1, 0, 0);
        break;
      case 4: //Right
        setDir = new PVector(1, 0, 0);
        break;
      case 5: //Towards
        setDir = new PVector(0, 0, -1);
        break;
      case 6: //Away
        setDir = new PVector(0, 0, 1);
        break;
      default:
        setDir = new PVector(0, 0, 0);
        break;
    }
    return setDir;
  }
  
  
}
