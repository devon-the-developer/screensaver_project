class BeamSystem{
  
  ArrayList<ParticleSystem> beams;
  PVector origin;
  
  BeamSystem(){
    beams = new ArrayList<ParticleSystem>();
  }
  
  void run(){
    if(beams.size() <= 5){
      beams.add(new ParticleSystem(random(0, 255)));
    }
    for(int i=beams.size() -1; i > 0; i--){
      ParticleSystem ps = beams.get(i);
      ps.run();
    }
  }
}
