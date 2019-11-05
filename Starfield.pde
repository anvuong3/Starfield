//your code here
Particle[] particle;
 int x = (int) (Math.random() * 500) - 50;
 int y = (int) (Math.random() * 500) - 50;
void setup(){
	//your code here
	size(500,500);
	particle = new Particle[1000];
 	for(int i = 0; i < particle.length; i++){
 		x = 250;
 		y = 250;
 		particle[i] = new Particle(x,y,3);
 		particle[0] = new OddballParticle(x,y,3);
 	}
 	background(0);

}
void draw()
{
	//your code here
	fill(0,0,0,5);
	stroke(0,0,0,5);
	rect(0,0,500,500); 	
	for(int i = 0; i < particle.length; i++){
 		particle[i].show();
 		particle[i].move();

 	}


}
class Particle
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	Particle(double x, double y, double speed){
 		myX = x;
 		myY = y;
 		mySpeed = Math.random()*10;
 		myAngle = Math.random()*2*Math.PI;
 	}
 	void show(){
 		fill((int)(Math.random()*255+1),(int)(Math.random()*255+1),(int)(Math.random()*255+1));
		ellipse((float)myX,(float)myY,10,10);

 	}
 	void move(){

		myX += (float) (Math.cos (myAngle) * mySpeed);
		myY += (float) (Math.sin(myAngle) * mySpeed);
		if(myX > 3500 || myX < -3500){
			myX = 250;
		}
		if(myY > 3500 || myY < -3500){
			myY = 250;
		}
 	}
 
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
	OddballParticle(double x,double y, double speed){
		super(x,y,speed);
		myX = x;
		myY = y;
		mySpeed = speed;

	}
	void show(){
		fill(255);
		ellipse(x, y, 50,50);
	}
	void move(){
		x += (int)(Math.random()*8-4);
		y += (int)(Math.random()*8-4);
				if(x <5 || y <5 || x > 495 || y > 495){
			x = 250;
			y=250;
		}
	}
}


