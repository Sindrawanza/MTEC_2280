import processing.serial.*;
Serial myPort;
int previousMillis = 0; 
int val;
boolean buttonPressed;
color green = color(0, 150, 0);
color red = color(150, 0, 0);
color white = color(150, 150, 150);
color blue = color(0, 0, 150);
int interval = 300;           // interval at which to blink (milliseconds)
void setup()
{
  size(800, 800);
  String[] portList = Serial.list();
  printArray(portList); // this line prints the port list to the console
  String portName = Serial.list ()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}
void draw() 
{
  int currentMillis = millis();
  
   fill(blue);
   rect(0,0, width/2, height/2);
   
   fill(red);
   rect(width/2,0,width/2,height/2);
   
   fill(white);
   rect(0,height/2,width/2,height/2);
   
   fill(green);
   rect(width/2, height/2, width/2, height/2);
   
  
  if (myPort.available() >0){
    val = myPort.read();
    println(val);
   
    if (val == 1){ // green has been pressed
    blue = color(0, 0, 255);
   
    }
    if (val == 0){ // red has been pressed
    red = color(255, 0, 0);
    
    }
    if (val == 2){ // white has been pressed
    white = color(255, 255, 255);
    
    }
    if (val == 3){ // blue has been pressed
     green = color(0, 255, 0);
    
    }
    previousMillis = currentMillis;
    buttonPressed = true;
  }
  
  if(buttonPressed && currentMillis - previousMillis >= interval)
  {
    green = color(0, 150, 0);
    red = color(150, 0, 0);
    white = color(150, 150, 150);
    blue = color(0, 0, 150);
    buttonPressed = false;
  }
}
