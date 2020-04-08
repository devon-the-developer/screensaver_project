class Particle {
  
  PVector loc, vel, acc;
  float w, h;
  
  Particle(){
    loc = new PVector(width/2, height/2);
    vel = new PVector();
    acc = new PVector();
    
    w = 20;
    h = 20;
  }
  
  void display(){
    fill(200, 200, 200, 20);
    ellipse(loc.x, loc.y, w, h);
  }
  
}
