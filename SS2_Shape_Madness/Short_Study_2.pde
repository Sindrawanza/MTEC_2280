int number = 10;
float grow = 2.2;
float move = 0.4;
float r = 255;
float g = 255;
float b = 255;

void setup()
{
  size(800,800);
}

void draw()
{
 background(255);
 background(r,g,b);
  
 if (mouseX > height/2)
 {
  fill(233,190,52);
  triangle(mouseX - 150, mouseY - 130, grow, grow,100,40);
  grow = grow + 0.2;
 }
 else if (mouseY > width/2)
 {
   fill(122,200,165);
   arc(mouseX, mouseY, grow, grow,PI,TWO_PI);
    grow = grow + 0.4;
 }
  else
  {
     ellipse(mouseX,mouseY, 100 * number, 100/number);
  
 rect(mouseX - 50, mouseY - 30, grow, grow);
  grow = grow + 0.2;
  
  rect(move, 400, 100, 100);
  move = move + 0.2;
  }
}
 void mousePressed()
{
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);

 
 println("move the mouse around to see diffrent shapes appear!");
 println("click the change the color");
 println("number: " +number);
 println("grow : " +grow);
 println("move :" +move);

}


   
