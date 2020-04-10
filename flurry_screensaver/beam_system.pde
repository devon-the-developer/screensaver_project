class BeamSystem{
  
  ArrayList<ParticleSystem> beams;
  PVector origin;
  float xtime = 0;
  float ytime = 500;
  
  BeamSystem(){
    beams = new ArrayList<ParticleSystem>();
    origin = new PVector(width/2, height/2);
  }
  
  void run(){
    //change origin
    float perlinX = map(noise(xtime), 0, 1, -0.5, 0.5);
    float perlinY = map(noise(ytime), 0, 1, -0.5, 0.5);
    origin = origin.add(new PVector(perlinX, perlinY));
    origin.x = constrain(origin.x, 0, width);
    origin.y = constrain(origin.y, 0, height);
    
    if(beams.size() <= 10){
      beams.add(new ParticleSystem(random(0, 255), origin));
    }
    for(int i=beams.size() -1; i > 0; i--){
      ParticleSystem ps = beams.get(i);
      ps.run();
      ps.moveOrigin(origin);
    }
    
    
    xtime += 0.005;
    ytime += 0.005;
  }
}
