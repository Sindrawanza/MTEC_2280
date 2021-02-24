PImage supes; 




float rise = 0;



void setup() {
  size (1000, 1000);
  background (255);
  imageMode(CENTER); //draws images from center point
  textAlign(CENTER); //aligns text
  textSize(20); //sets size of text

  //Assign image to object using loadImage() method
  supes= loadImage("superman_flight.png");
}  

void draw() {
  background(255);  
  
  
  String quote = "its a bird, its a plane its!....";
  String quote2 = "click to see him fly!";
  
  fill(0);
  text(quote, width - 160, height-200);
  text(quote2, width -160, height -100);
  
  
  

  image(supes, width/2, height/2); 
  
  if (mousePressed){
    background(255);
    
    image(supes, width/2,  rise);
    
    if (rise < height/2){
      rise--;
    }
  }
  else {
    rise = 0;
  }
  
  
 
  println("fall: " + rise);
}
