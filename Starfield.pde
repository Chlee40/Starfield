Ripple [] norm;
void setup()
{
	size(600, 600);
	 norm = new Ripple[1000];
	 for (int i = 0; i < norm.length; i++)
	 {
	 	norm[i] = new Ripple();
	 	norm[0] = new Stone();
	 }
}
void draw()
{
	background(30,100,200);
	for (int i = 0; i < norm.length; i++)
	{
		norm[i].show();
		norm[i].move();
	}
}
void mousePressed()
{
	for (int i = 0; i < norm.length; i++)
	 {
	 	norm[i] = new Ripple();
	 	norm[0] = new Stone();
	 }
}
class Ripple
{
	int mySpeed;
	double myX,myY,myAngle;

	Ripple()
	{
		myX = 300;
		myY = 300;
		mySpeed = (int) (Math.random()*10+1);
		myAngle =  Math.random()*2*Math.PI;
	}

	void show()
	{
		fill(255);
		noStroke();
		ellipse((float) myX, (float) myY, 5, 5);
	}

	void move()
	{
		myX = myX +  Math.cos(myAngle) * mySpeed;
		myY = myY +  Math.sin(myAngle) * mySpeed;
	}
}

class Stone extends Ripple
{
	void move()
	{
		myX = myX-.5 + Math.cos(myAngle) * Math.random()*2;
		myY = myY-.5 + Math.sin(myAngle) * Math.random()*2;
	}

	void show()
	{
		fill(145);
		ellipse( (float) myX, (float) myY, 60, 50);
	}
}


