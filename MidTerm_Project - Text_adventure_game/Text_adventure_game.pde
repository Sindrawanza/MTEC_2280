String state = "title";
String leveltext [];
String button

int levelNumber;

void setup()
{
  
 size(1000,1000);
 textAlign(CENTER);
 textSize(18);
 int levelNumber = 0;
 leveltext = new String [5];
 leveltext[0] = "You wake up after hearing a loud crash";
 leveltext[1] = "You see a hole in the ceiling of your living room and a hole in the middle of your living room going down several floors down and nobody else around";
 leveltext[2] = "You call for help on your phone, but no service";
 leveltext[3] = "You managed to jump to the other side of your living room and exit your apartment";
 leveltext[4] = "Outside people are panicking as the sky is a dark pale green as you see there are large floating objects";
 leveltext[5] = "You see the float objects are all metal in construction floating above everybody at least 40 feet in the air, even parts of buildings manage to hang in the air floating lazily";

}

 void draw ()
{
  background (0);
  if (levelNumber == 0)
  {
    Level0();
  } 
  else if (levelNumber == 1)
  {
    Level1();
  } 
  else if (levelNumber == 2) 
  {
    Level2();
  } 
  else if (levelNumber == 3) 
  {
    Level3();
  }
  else if (levelNumber == 4) 
  {
    Level4();
  }
}

void Level0 ()
{
  int playerChoice = bu
