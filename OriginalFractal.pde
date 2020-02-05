int col;
public void setup()
{
	size(1000,1000);
	background(255);
	col = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void draw()
{
	myFractal(250,250,500);

}
public void myFractal(int x, int y, int s)
{
	fill(col);
	stroke(0);
	rect(x,y,s,s);

	if(s > 10)
	{
			col = changeColor(col);
			myFractal(x-(s/4),y-(s/4),s/2);
			col = changeColor(col);
			myFractal(x-(s/4)+s,y-(s/4),s/2);
			col = changeColor(col);
			myFractal(x-(s/4)+s,y-(s/4)+s,s/2);
			col = changeColor(col);
			myFractal(x-(s/4),y-(s/4)+s,s/2);
	}
}
public int changeColor(int c)
{
	return c + 25;
}