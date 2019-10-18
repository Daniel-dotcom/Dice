int z;
void setup()
{
	noLoop();
  size(300,300);
}
void draw()
{
	background(0);
  
  for(int y = 0; y < 300; y = y + 100){
  for(int x = 0; x < 300; x = x + 100){
    Die bob = new Die(x,y);
  bob.show();
  z = z + bob.numDots;
  }
  text("This is the total of the rolls: " + z, 20, 300);
  }//your code here
}
void mousePressed()
{
	redraw();
  z = 0;
}
class Die //models one single dice cube
{
	int myX, myY, rectSize, numDots, z;
	
	Die(int x, int y) //constructor
	{
    roll();
		myX = x;
    myY = y;
    rectSize = 100;
  //variable initializations here
	}
	void roll()
	{
  	numDots = (int)((Math.random()*6)+1);
    
	}
	void show()
	{
		fill(255, 255, 255);
    rect(myX,myY,rectSize, rectSize);
    fill(0,0,0);

    if(numDots == 1){
      ellipse(myX+50, myY+50, 25, 25);
	  }else if(numDots == 2){
      ellipse(myX+25, myY+25, 25, 25);
      ellipse(myX+75, myY+75, 25, 25);
    }else if(numDots == 3){
      ellipse(myX+25, myY+25, 25, 25);
      ellipse(myX+50, myY+50, 25, 25);
      ellipse(myX+75, myY+75, 25, 25);
    }else if(numDots == 4){
      ellipse(myX+25, myY+25, 25, 25);
      ellipse(myX+75, myY+25, 25, 25);
      ellipse(myX+25, myY+75, 25, 25);
      ellipse(myX+75, myY+75, 25, 25);
    }else if (numDots == 5){
      ellipse(myX+25, myY+25, 25, 25);
      ellipse(myX+75, myY+25, 25, 25);
      ellipse(myX+25, myY+75, 25, 25);
      ellipse(myX+75, myY+75, 25, 25);
      ellipse(myX+50, myY+50, 25, 25);
    }else if(numDots == 6){
      ellipse(myX+25, myY+20, 25, 25);
      ellipse(myX+25, myY+50, 25, 25);
      ellipse(myX+25, myY+80, 25, 25);
      ellipse(myX+75, myY+20, 25, 25);
      ellipse(myX+75, myY+50, 25, 25);
      ellipse(myX+75, myY+80, 25, 25);
    }  
  
  }
}
