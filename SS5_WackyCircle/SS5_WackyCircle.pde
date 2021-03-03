float xmove1, xmove2, ymove1, ymove2;
float x1,x2,y1,y2;
float x = 0;
float y = 0;
float speed = 1;

void setup()
{
  size(500,500);
 x1 = width/2;
 x2 = width/8;
 y1 = height /2; 
 y2 = height/8;
}

void draw() 
{
   background(255);
   bounce();
   move();
   display();
   textSize(20);
   text("press the mouse to see this wacky circle in action!", 10, 60);
   text("...and then disappear!", 40, 80);

   fill(0,102,150,200);
   
   x1 = x1 + xmove1;
   x2 = x2 + xmove2;
   y1 = y1 + ymove1;
   y2 = y2 + ymove2;
}
   void bounce()
   {
     if(( x1 > width) || ( x < 0))
     {
      speed = speed * -1; 
     }
    else if ((x2 > width) || (x >0))
    {
      speed = speed * -1;
    }
    else if ((y1 > height) || (y > 0))
    {
     speed = speed * -1;
    }
    else if ((y2 > height) || (y<0))
    {
      speed = speed * -1;
    }
    else 
    {
     print("whoops!");
    }
 }
   void display()
   {
    stroke(0);
    fill(132,77,200);
    ellipse(x1,x2, y1, y2);
   }
    void move()
    {
      x1 = x1 +speed;
      x2 = x2 + speed;
      y1 = y1 + speed;
      y2 = y2 + speed;
      
    }
     void mousePressed()
     {
       xmove1 = random (-100,100);
       xmove2 = random(-100,100);
       ymove1 = random(-100,100);
       ymove2 = random (-100,100);
     }
