Particle[] bobs = new Particle[100];
void setup()
{
  size(600,600);
  noStroke();
  for(int i = 0; i < bobs.length; i++)
    bobs[i] = new Particle();
  bobs[0] = new OddballParticle();
}

void draw()
{
  background(0);
  for(int i = 0; i < bobs.length; i++){
    bobs[i].move();
    bobs[i].show();
  }
  bobs[0].move();
  bobs[0].show();
  
}
class Particle
{
  double myX, myY, myA, myS;
  int myC;
  Particle(){
   myX = width/2;
   myY = height/2;
   myC = color(255, 255, 255);
   myS = Math.random() * 10;
   myA = Math.random() * 2 * Math.PI;
  }
  void move(){
    myX += Math.cos(myA) * myS;
    myY += Math.sin(myA) * myS;
    if(myX > width + 30 || myX < -30){
      myX = width/2;
      myY = height/2;
      myA = Math.random() * 2 * Math.PI;
    }
    if(myY > height + 30 || myY < -30){
      myX = width/2;
      myY = height/2;
      myA = Math.random() * 2 * Math.PI;
    }
    
  }
  void show(){
   fill(myC);
   ellipse((float)myX, (float)myY, 10, 10);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
   myX = width/2;
   myY = height/2;
   myC = color(255, 0, 0);
   myS = Math.random() * 8;
   myA = Math.random() * 2 * Math.PI;
  }
  void move(){
    myX += Math.cos(myA) * myS;
    myY += Math.sin(myA) * myS;
    if(myX > width + 30 || myX < -30){
      myX = width/2;
      myY = height/2;
      myA = Math.random() * 2 * Math.PI;
      myS = Math.random() * 8;
    }
    if(myY > height + 30 || myY < -30){
      myX = width/2;
      myY = height/2;
      myA = Math.random() * 2 * Math.PI;
      myS = Math.random() * 8;
    }
  }
  void show(){
    fill(myC);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}
