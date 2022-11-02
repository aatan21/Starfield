Particle bob;
void setup()
{
  size(600,600);
  noStroke();
  bob = new Particle();
}
void draw()
{
  background(0);
  bob.move();
  bob.show();
  
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
    myX += Math.cos(myA * myS) * 3;
    myY += Math.sin(myA * myS) * 3;
    if(myX > width + 30 || myX < -30){
      myX = width/2;
      myY = height/2;
    }
    if(myY > height + 30 || myY < -30){
      myX = width/2;
      myY = height/2;
    }
    
  }
  void show(){
    ellipse((float)myX, (float)myY, 10, 10);
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}
