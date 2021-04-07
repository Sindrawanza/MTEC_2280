const int pot = A0;
const int LED = 11;// intializes LED
const int LED2 =10;// intializes LED
const int LED3 = 9;// intializes LED
const int LED4 = 6;// intializes LED
int val =0; // values for Pot



void setup() 
{
pinMode(LED, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(LED4, OUTPUT);
// intialize serial communication at 9600 bits persecond
}
void loop() 
{
val = analogRead(pot);// value variables for pot
val = val/4;
delay(100);
analogWrite(LED2,val);
analogWrite(LED4,val);
analogWrite(LED,HIGH);
delay(val);
analogWrite(LED,LOW);
analogWrite(LED3,HIGH);
delay(val);
analogWrite(LED3,LOW);
}
