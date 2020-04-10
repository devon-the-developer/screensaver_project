class ParticleSystem{
  
  ArrayList<Particle> particles;
  PVector origin;
  float col;
  PVector desiredLocation = new PVector(width/2, height/2);
  float xTime = random(0, 500);
  float yTime = random(500, 5000);
  float G = 0.35;
  
  ParticleSystem(float _col, PVector _origin){
    origin = _origin;
    particles = new ArrayList<Particle>();
    col = _col;
  }
  
  void addParticle(){
    particles.add(new Particle(origin, col));
  }
  
  void moveOrigin(PVector _newOrigin){
    origin = _newOrigin;
  }
  
  void run(){
    //set up desired location
    float perlinX = map(noise(xTime), 0, 1, -2, 2);
    float perlinY = map(noise(yTime), 0, 1, -2, 2);
    
    //check if offscreen then return to screen
    desiredLocation.add(new PVector(perlinX, perlinY));
    if(desiredLocation.x >= width || desiredLocation.x <= 0){
      desiredLocation.x = random(width);
    }
    if(desiredLocation.y >= height || desiredLocation.y <= 0){
      desiredLocation.y = random(height);
    }
        
    ////show desiredLocation
    //rect(desiredLocation.x, desiredLocation.y, 10, 10);
    
    if(particles.size() < 100){
      addParticle();
    }
    for(int i=particles.size() -1; i >= 0; i--){
      Particle p = particles.get(i);
      p.run();
      
      //apply force to particle in direction of desired
      PVector force = PVector.sub(desiredLocation, p.loc);
      float distance = force.mag();

      distance = constrain(distance, 20, 50);
      force.normalize();
      float strength = (G * p.mass * 50) / (distance * distance);
      force.mult(strength);
      p.applyForce(force);
      
      if(p.lifeSpan <= 0){
        particles.remove(i);
      }
    }
    xTime += 0.01;
    yTime += 0.01;
  }
  
}
