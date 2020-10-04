void setup()
  {
      size(500, 500);
      noLoop();
  }
  void draw()
  {
      //your code here
      background(0);
      int dieSum = 0;
      for(int y = 60; y<=360; y+=150)
      {
        for(int x =60; x<=360; x+=150)
        {
          Die joe = new Die(x,y);
          joe.show();
          if(joe.one==true)
          {
            dieSum++;
          }
          else if(joe.two==true)
          {
            dieSum+=2;
          }
          else if(joe.three==true)
          {
            dieSum+=3;
          }
          else if(joe.four==true)
          {
            dieSum+=4;
          }
          else if(joe.five==true)
          {
            dieSum+=5;
          }
          else
          {
            dieSum+=6;
          }
          
        }
      }
      fill(0, 152,153);
      textSize(40);
      text("The sum of dots is: " + dieSum, 40, 490);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      boolean one, two, three, four, five, six;
      int myX, myY;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          roll();
          myX=x;
          myY=y;
      }
      void roll()
      {
          //your code here
          double randomDecimal = Math.random();
          if (randomDecimal<0.166)
          {
            one = true;
            
            
          }else if (randomDecimal<0.333)
          {
            two = true;
            
          }else if (randomDecimal<0.5)
          {
            three = true;
            
          }else if (randomDecimal<0.666)
          {
            four = true;
            
          }else if (randomDecimal<0.833)
          {
             five = true;
             
          }else if (randomDecimal<1)
          {
            six = true;
            
            
          }
      }
      void show()
      {
          //your code here
          noStroke();
          fill(200);
          square(myX, myY, 80);
          fill(0);
          if (one==true)
          {
            circle(myX+40, myY+40, 20);
          }else if (two==true)
          {
            circle(myX+25, myY+25, 20);
            circle(myX+55, myY+55, 20);
          }else if (three==true)
          {
            circle(myX+15,myY+15,20);
            circle(myX+40, myY+40, 20);
            circle(myX+65, myY+65, 20);
          }else if (four==true)
          {
            circle(myX+25,myY+25,20);
            circle(myX+55, myY+25, 20);
            circle(myX+25, myY+55, 20);
            circle(myX+55, myY+55, 20);
          }
          else if (five==true)
          {
            circle(myX+15, myY+15,20);
            circle(myX+65, myY+15,20);
            circle(myX+40, myY+40, 20);
            circle(myX+15, myY+65, 20);
            circle(myX+65, myY+65, 20);
          }
          else if (six==true)
          {
            circle(myX+25, myY+15,20);
            circle(myX+25, myY+40, 20);
            circle(myX+25, myY+65, 20);
            circle(myX+55, myY+15,20);
            circle(myX+55, myY+40, 20);
            circle(myX+55, myY+65, 20);
          }
      }
  }
