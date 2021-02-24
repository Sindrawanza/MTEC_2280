void setup()
{
  size(1000, 1000);
  rectMode(CENTER);
}

 void draw()
 {
   stroke(0);
   
   
   background(255);
   for(int i = 0; i<=500; i+=40)
    {
      
     ellipse(mouseX,mouseY,i+1,i-1);
    }
 
  for(int i = 0; i<500; i+=400)
  {
     
      line(mouseX,mouseY,i+1,i+1);
      strokeWeight((i+1)/25);
      noFill();
      if(mouseX<500 && mouseY< 500)
      {
        fill(0);
      }
      else if( mouseX>500 && mouseY<500)
      {
        fill(100);
      }
      else if(mouseX < 500 && mouseY >500)
      {
        fill(150);
      }
      else if(mouseX > 500 && mouseY > 500)
      {
        fill(250);
      }
      
       
     
  }
 }
