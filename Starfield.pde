//your code here
Particle[] particle;
int x = 250;
int y = 250;
int random = (int)random(0,255);
void setup(){
	//your code here
	size(500,500);
	particle = new Particle[169];
 	for(int i = 0; i < particle.length; i++){
 		particle[i] = new Particle(x,y);
 	}
 	background(0);

}
void draw()
{
	//your code here
	fill(0,0,0,5);
	stroke(0,0,0,5);
	rect(0,0,500,500);


}
class Particle
{
	//your code here
	int myX, myY;
	Particle(int x, int y){
 		myX = x;
 		myY = y;
 	}
 	void show(){
 		fill((int)(Math.random()*255+1),(int)(Math.random()*255+1),(int)(Math.random()*255+1));
		ellipse(x,150,100,100);
		x = x+10;
		if(x > 500){
			x = -50;
		}
 	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


