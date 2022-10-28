Particle jit;
void setup()
{
  size(600,600);
  noStroke();
  jit = new Particle();
}
void draw()
{
  background(0);
  
}
class Particle
{
  double myX, myY, myA, myS;
  int myC;
  Particle(){
   myX = width/2;
   myY = height/2;
   myC = color(255, 255, 255);
   myS = (int)(Math.random() * 2) + 8;
   myA = (int)(Math.random() * 361);
  }
  void move(){
    myX += myS;
    
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}

