PVector buttonSize = new PVector (150, 30);
int levelNumber;
 
String textForMyLevel [];
String buttonOneText [];
String buttonTwoText [];
 
void setup ()
{
  size (1024, 768);
  levelNumber = 0;
  textForMyLevel = new String [9];
  textSize(12);
  textForMyLevel[0] = "You wake up after hearing a loud crash?";
  textForMyLevel[1] = "You see a hole in the ceiling of your living room and a hole in the middle of your living room going down several floors down and nobody else around ";
  textForMyLevel[2] = "You call for help on your phone, but no service";
  textForMyLevel[3] = "You managed to jump to the other side of your living room and exit your apartment";
  textForMyLevel[4] = "Outside people are panicking as the sky is a dark pale green as you see there are large floating objects"; 
  textForMyLevel[5] = "You see the float objects are all metal in construction floating above everybody at least 40 feet in the air, even parts of buildings manage to hang in the air floating lazily";
 
 
  buttonOneText = new String [9];
  buttonOneText[0] = "North";
  buttonOneText[1] = "Swim";
  buttonOneText[2] = "Window";
  buttonOneText[3] = "Continue";
  buttonOneText[4] = "Restart";
  buttonOneText[5] = "Open Window";
 
 
 
  buttonTwoText = new String [9];
  buttonTwoText[0] = "West";
  buttonTwoText[1] = "Turn Back";
  buttonTwoText[2] = "Door";
  buttonTwoText[3] = "Continue";
  buttonTwoText[4] = "Restart";
  buttonTwoText[5] = "Try Door";
  
}
 
void draw ()
{
  background (0);
  if (levelNumber == 0)
  {
    LevelZero();
  } 
  else if (levelNumber == 1)
  {
    LevelOne();
  } 
  else if (levelNumber == 2) 
  {
    LevelTwo();
  } 
  else if (levelNumber == 3) 
  {
    LevelThree();
  }
  else if (levelNumber == 4) 
  {
    LevelFour();
  }
  else if (levelNumber == 5) 
  {
    LevelFive();
  }
  
}
 
void PrintMyLevelText ()
{
  text(textForMyLevel[0], 100, 100);
}
void PrintMyLevelText1 ()
{
  text(textForMyLevel[1], 100, 100);
}
void PrintMyLevelText2 ()
{
  text(textForMyLevel[2], 100, 100);
}
void PrintMyLevelText3 ()
{
  text(textForMyLevel[3], 100, 100);
}
void PrintMyLevelText4 ()
{
  text(textForMyLevel[4], 100, 100);
}
void PrintMyLevelText5 ()
{
  text(textForMyLevel[5], 100, 100);
}

 
void PrintMyButtonTexts ()
{
  text(buttonOneText[0], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[0], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts1 ()
{
  text(buttonOneText[1], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[1], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts2 ()
{
  text(buttonOneText[2], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[2], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts3 ()
{
  text(buttonOneText[3], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[3], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts4 ()
{
  text(buttonOneText[4], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[4], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts5 ()
{
  text(buttonOneText[5], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[5], width/2 + 100, height - 150 + buttonSize.y);
}


 
 
int buttonSelection ()
{
  int thingToReturn = 0;
 
  rect(width/2 - buttonSize.x - 100, height - 100, buttonSize.x, buttonSize.y);
  rect(width/2 + 100, height - 100, buttonSize.x, buttonSize.y); 
 
  if (mouseX >= (width/2 - buttonSize.x - 100) && mouseX <= (width/2 - 100) && mouseY >= (height - 100) && mouseY <= (height - 100 + buttonSize.y))
  {
    println ("inside the left button on X");
    if (mousePressed)
    {
      println ("mouse pressed inside the left button");
      thingToReturn = 1;
    }
  } else if (mouseX >= (width/2 + 100) && mouseX <= (width/2 + 100 + buttonSize.x) && mouseY >= (height - 100) && mouseY <= (height - 100 + buttonSize.y))
  {
    println ("inside the right button on X");
    if (mousePressed)
    {
      println ("mouse pressed inside the right button");
      thingToReturn = 2;
    }
  }
 
  return thingToReturn;
}
 
void LevelZero ()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts();
  PrintMyLevelText();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 1;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 2;
  }
}
 
void LevelOne ()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts1();
  PrintMyLevelText1();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 3;
    println("Hello from the other side");
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 1");
}
 
void LevelTwo ()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts2();
  PrintMyLevelText2();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 5;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 4;
  }
  println ("I'm in level 2");
}
 
void LevelThree()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts3();
  PrintMyLevelText3();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 4;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 3");
}
void LevelFour()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts4();
  PrintMyLevelText4();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 4");
}
void LevelFive()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts5();
  PrintMyLevelText5();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 3;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 5");
}
