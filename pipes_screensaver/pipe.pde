class Pipe {
  
  PVector loc, vel, acc;
  PVector origin;
  
  float size;
  float timeOfTravel = 0;
  
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
    if(timeOfTravel <= 0){
      acc = direction();
      timeOfTravel = random(50, 150);
    }
    vel.add(acc);
    loc.add(vel);
    
    acc.mult(0);
    timeOfTravel--;
  }
  
  PVector direction(){
    //controls movement direction
    PVector setDir;
    int dir = int(random(1, 6));
    switch(dir) {
      case 1: //Up
        setDir = new PVector(-vel.x, -1, -vel.z);
        break;
      case 2: //Down
        setDir = new PVector(-vel.x, 1, -vel.z);
        break;
      case 3: //Left
        setDir = new PVector(-1, -vel.y, -vel.z);
        break;
      case 4: //Right
        setDir = new PVector(1, -vel.y, -vel.z);
        break;
      case 5: //Towards
        setDir = new PVector(-vel.x, -vel.y, -1);
        break;
      case 6: //Away
        setDir = new PVector(-vel.x, -vel.y, 1);
        break;
      default:
        setDir = acc;
        break;
    }
    return setDir;
  }
  
  
}
