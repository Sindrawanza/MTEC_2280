const int buttonPin = 3;     // creates variable called buttonPin and assigns value of 2
const int LED =  11;      // creates variable called LED and assigns value of 13
const int LED2 = 10;
const int LED3 = 9;
const int LED4 = 6;


// sets up integer variables that will change over time, assigns initial values
int LEDState = LOW;         // tracks current state of LED pin
int buttonState = LOW;             // tracks current reading of button pin
int lastButtonState = LOW;   // tracks previous reading of button pin


// setup runs once at startup
void setup() {
  pinMode(buttonPin, INPUT);  // initialize pushbutton pin as an input.
  pinMode(LED, OUTPUT);
  pinMode(LED2,OUTPUT);                        // initialize LED pin as an output
  pinMode(LED3,OUTPUT);
  pinMode(LED4,OUTPUT);
}

// loop runs infinitely
void loop() 
{
  buttonState = digitalRead(buttonPin); // read value of buttonPin and store it in buttonState
  delay (10); //small delay for physical button debouncing, to increase accuracy

  //conditional statement
  if (buttonState == HIGH && lastButtonState == LOW) { //check for button transition
    LEDState = !LEDState; //assign opposite value of LEDState to new LEDState
  } else 
  { //otherwise
    //do nothing
  }

  lastButtonState = buttonState; // assign current value of buttonState to lastButtonState

  // conditional statement for writing to LED pin
  if (LEDState == 1) { // if value of LEDState equals 1
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
    for (int i = 0 ; i <= 255; i += 5) 
   {
    analogWrite(LED,0);
    analogWrite(LED3,0);
    analogWrite(LED2,i);
    analogWrite(LED4,i);
    delay(50);  
  }
}
}
