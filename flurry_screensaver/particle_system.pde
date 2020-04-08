class ParticleSystem{
  
  ArrayList<Particle> particles;
  PVector origin;
  
  ParticleSystem(){
    origin = new PVector(width/2, height/2);
    particles = new ArrayList<Particle>();
  }
  
  void addParticle(){
    particles.add(new Particle(origin));
  }
  
  void run(){
    while(particles.size() < 19){
      addParticle();
    }
    for(int i=particles.size() -1; i >= 0; i--){
      Particle p = particles.get(i);
      p.run();
    }
  }
  
}
