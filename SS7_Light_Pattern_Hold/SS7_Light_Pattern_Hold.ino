const int buttonPin = 4;     
const int LED =  11;      
const int LED2 = 10;
const int LED3 = 9;
const int LED4 = 6;
int buttonState = LOW;
int LEDState = LOW;
int lastButtonState = LOW;




// setup runs once at startup
void setup() {
  pinMode(buttonPin, INPUT);  // initialize pushbutton pin as an input.
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);// initialize LED pin as an output
}

// loop runs infinitely
void loop() {
  buttonState = digitalRead(buttonPin); 
  delay (10); 

  //conditional statement
  if (buttonState == LOW && lastButtonState == HIGH) 
  { //check for button transition
    LEDState = !LEDState; 
     for (int i = 0 ; i <= 255; i += 5) 
  { 
    analogWrite(LED,i);
    analogWrite(LED3,i);
    analogWrite(LED2,0);
    analogWrite(LED4,0);
    delay(50);  
  }
      }
 
   
    else { 
    for (int i = 255 ; i >= 0; i -= 5) 
   {
    analogWrite(LED2, i);
    analogWrite(LED4, i);
    analogWrite(LED, 0);
    analogWrite(LED3,0);
    delay(30);
  }
    }

  lastButtonState = buttonState; 

  // conditional statement for writing to LED pin
  if (LEDState == LOW) { // if value of LEDState equals 1
    digitalWrite (LED, HIGH);  //send voltage to LED pin
  } else { //otherwise
    digitalWrite (LED, LOW);  //turn off voltage to LED pin
  }
}
