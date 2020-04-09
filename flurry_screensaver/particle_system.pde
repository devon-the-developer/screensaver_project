class ParticleSystem{
  
  ArrayList<Particle> particles;
  PVector origin;
  float col;
  
  ParticleSystem(float _col){
    origin = new PVector(width/2, height/2);
    particles = new ArrayList<Particle>();
    col = _col;
  }
  
  void addParticle(){
    particles.add(new Particle(origin, col));
  }
  
  void run(){
    if(particles.size() < 20){
      addParticle();
    }
    for(int i=particles.size() -1; i >= 0; i--){
      Particle p = particles.get(i);
      p.run();
      if(p.lifeSpan <= 0){
        particles.remove(i);
      }
    }
  }
  
}
