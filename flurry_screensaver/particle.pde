class Particle {
  
  PVector loc, vel, acc;
  float w, h;
  float col;
  int lifeSpan;
  
  Particle(PVector _origin, float _col){
    loc = new PVector(_origin.x, _origin.y);
    vel = new PVector();
    acc = new PVector();
    
    w = 20;
    h = 20;
    lifeSpan = 100;
    col = _col;
  }
  
  void run(){
    display();
    update();
  }
  
  void display(){
    fill(col, 200, 200, 150);
    ellipse(loc.x, loc.y, w, h);
    lifeSpan--;
  }
  
  void applyForce(PVector _force){
    PVector f = _force.get();
    acc.add(f);
  }
  
  void update(){
    applyForce(new PVector(random(-0.1, 0.1), random(0.15)));
    vel.add(acc);
    loc.add(vel);
    
    acc.mult(0);
  }
  
}
