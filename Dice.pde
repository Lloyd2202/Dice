void setup()
{
  size(300, 300);
  noLoop();
}
void draw()
{
  background(#C8F1F5);
  Die bob;
  int total = 0;
  for (int x = 30; x<300; x+=60) {
    for (int y = 30; y<180; y+=60) {
      bob = new Die(x, y);
      bob.roll();
      bob.show();
      total += bob.getNumber();
      textSize(60);
      text("Total:", 10, 240);
    }
  }
  text(total, 200, 240);
}

void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int myX, myY, number, counter=0;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    number = (int)((Math.random()*6)+1);
  }
  void show()
  {
    fill(175, 163, 222); 
    rect(myX-30, myY-30, 60, 60, 10);
    fill(0, 0, 0);

    if (number==1) {
      ellipse(myX, myY, 10, 10);
    }

    if (number==2) {
      ellipse(myX-15, myY, 10, 10);
      ellipse(myX+15, myY, 10, 10);
    }

    if (number==3) {
      ellipse(myX, myY, 10, 10);
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
    }

    if (number==4) {
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
    }

    if (number==5) {
      ellipse(myX, myY, 10, 10);
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
    } 

    if (number==6) {
      ellipse(myX-15, myY, 10, 10);
      ellipse(myX+15, myY, 10, 10);
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
    }
  }

  int getNumber() {
      return number;
  }
  
}
