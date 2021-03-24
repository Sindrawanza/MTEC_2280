PVector buttonSize = new PVector (150, 30);
 
int levelNumber; //intialize the level number
 

String textForMyLevel []; // creates the array for level text
String buttonOneText [];  // creates the array for the left button text
String buttonTwoText [];  // creates the array for right button text
int playerChoice; 
 
String [] Smell = {"iron", "blood", "methane", "rust", "burning wood"};  
int index = int(random(Smell.length));
 
void setup ()
{
  size (1024, 768);
 
  levelNumber = 0;
  playerChoice = 0;
  textForMyLevel = new String [15];
  textSize(12);
 
 // array for the text that appears at the begining of each level
  textForMyLevel[0] = " You wake up from a nap, to the sound a giant crash \n do you leave through the fire escape or go into your living room?";
  textForMyLevel[1] = " You find a giant hole in your living room going through several floors. \n The smell of " +Smell[index]+   " fills the air. \n Do you tiptoe around it or try to jump it ";
  textForMyLevel[2] = "You make it to the exit of your apartment, you make it outside of your apartment building. There is nobody around, not even sounds of other people \n You see the float objects are all metal in construction floating above everybody at least 40 feet in the air, \n even parts of buildings manage to hang in the air floating lazily. \n Do you walk down the road or Call your parents?";
  textForMyLevel[3] = "You call your parents, they pick up but after picking up the phone all you can hear is the cries of babies and then the phone cuts off. \n Do you continue to walk down the road or sit down and soak it all in?";
  textForMyLevel[4] = "You've made it about halfway through the street and you realize the ground has been slowly rising into the sky....  \n you have been getting steadily close the floating objects as you've walked. \n Do you continue to what looks like the end of your neighborhood that has been rising to sky? \n Or do you give up and go back to sleep in your apartment?"; 
  textForMyLevel[5] = "By the time you walk down the road, you realize you are now steadily rising into space now well past the floating metal objects \n Do you jump off the edge or Sit on the edge and see what happens?";
  textForMyLevel[6] = "Just as you break orbit you are faced with a large blackhole above your rising landmass, for a split second.... \n you feel apart of space and time itself, everything and nothing in a singular moment and then blackness. \n you feel warm light on your face \n do you open your eyes or keep them closed?";
  textForMyLevel[7] = "You awake, you see a bright fluorescent light above you \n you are in the arms of your mother and your father beside her both smiling at down at you...";
  textForMyLevel[8] = "As you tiptoe around the crater, a portion of your floor breaks and you fall 100 feet through the crater... \n that goes all the way to the bottom of your building, you feel the wind on your face before fading from consciousness ,Try again!";
  textForMyLevel[9] = "As you decide to soak it all in, you notice your entering space... \n Just as you get to your feet to get a closer look as you break orbit, A satellite comes crashing down exactly where you are standing. \n Please Try again!";
  textForMyLevel[10] = "After calculating the odds of even trying to survive the situation you are in, you decide to simply go back to your apartment. \n Enter through the fire escape and go back to sleep in your bed... then suddenly, The smell of "+Smell[index]+ " fills the air once more" ;
  textForMyLevel[11] = "You decide to see what would happen, if you were to jump off the edge of the landmass. You have been falling for what feels like a minute and then pass out. \n You wake up in the middle of a large body of water and you see a black hole in emerging in the sky... \n just as begin to move the you become trapped in the water and drown as your lifeless body becomes part of the singularity.";
  textForMyLevel[12] = "You begin to descend on the fire escape and you can look into the apartment next door. \n You see two babies appeared to be wrapped in clothes that adults would wear, \n Do you decide to open the window and help or descend to the street level?";
  textForMyLevel[13] = "You attempt to help the babies by trying to enter the next door apartment's window, just as you begin to open the window...\n The fire escape flooring underneath you completely seperates from the building and you fall backwards to the street level... \n the last thing you see are floating objects in the sky and far above them something large, dark and circular";  
  textForMyLevel[14] = "You refuse to open your eyes, eventually the warm light fades and a familiar smell seeps in ";  


 // left button text
  buttonOneText = new String [15];
  buttonOneText[0] = "Living room";
  buttonOneText[1] = "Tip-Toe";
  buttonOneText[2] = "Walk down the road";
  buttonOneText[3] = "Walk it off";
  buttonOneText[4] = "Walk till the end";
  buttonOneText[5] = "Hang off the edge";
  buttonOneText[6] = "Open";
  buttonOneText[7] = "Start over?";
  buttonOneText[8] = "Start over?";
  buttonOneText[9] = "Start over?";
  buttonOneText[10] = "Wake up!";
  buttonOneText[11] = "Start over?";
  buttonOneText[12] = "Open the window";
  buttonOneText[13] = "Start over?";
  buttonOneText[14] = "Wake up!";



  
 
 // right button text
  buttonTwoText = new String [15];
  buttonTwoText[0] = "Fire escape";
  buttonTwoText[1] = "Jump It";
  buttonTwoText[2] = "Call Mom and Dad";
  buttonTwoText[3] = "Soak it all in";
  buttonTwoText[4] = "Go back and sleep it off";
  buttonTwoText[5] = "Jump";
  buttonTwoText[6] = "Close";
  buttonTwoText[7] = "Start over?";
  buttonTwoText[8] = "Start over?";
  buttonTwoText[9] = "Start Over?";
  buttonTwoText[10] = "Wake Up! ";
  buttonTwoText[11] = "Start Over? ";
  buttonTwoText[12] = "Descend ";
  buttonTwoText[13] = "Start Over? ";
  buttonTwoText[14] = "Wake up!";



}
 
void draw ()
{
  background (0);
 
  // creates the button positions
  rect(width/2 - buttonSize.x - 100, height - 100, buttonSize.x, buttonSize.y);
  if (!buttonTwoText[levelNumber].equals(buttonOneText[levelNumber]))
    rect(width/2 + 100, height - 100, buttonSize.x, buttonSize.y); 
 
  PrintMyButtonTexts(); // calls on the left and right button texts
  PrintMyLevelText();  // calls on the text at the begining of each level
 
  // the non linear flow depending on levelNumber 
  if (levelNumber == 0)
  {
    LevelZero();
  } else if (levelNumber == 1)
  {
    LevelOne();
  } else if (levelNumber == 2) 
  {
    LevelTwo();
  } else if (levelNumber == 3) 
  {
    LevelThree();
  } else if (levelNumber == 4) 
  {
    LevelFour();
  } else if (levelNumber == 5) 
  {
    LevelFive();
  } else if (levelNumber == 6) 
  {
    LevelSix();
  } else if (levelNumber == 7) 
  {
    LevelSeven();
  }
  else if (levelNumber == 8)
  {
    LevelEight();
  } else if (levelNumber == 9) 
  {
    LevelNine();
  } else if (levelNumber == 10) 
  {
    LevelTen();
  } else if (levelNumber == 11) 
  {
    LevelEleven();
  } else if (levelNumber == 12) 
  {
    LevelTwelve();
  } else if (levelNumber == 13) 
  {
    LevelThirteen();
  } else if (levelNumber == 14) 
  {
    LevelFourteen();
  }
}

 

void PrintMyLevelText ()   // calls the text at the begining of each level depending on the level number
{
  text(textForMyLevel[levelNumber], 100, 100);
}
 
void PrintMyButtonTexts () // calls the text ontop of both the left and right buttons on each level
{
  text(buttonOneText[levelNumber], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  if (!buttonTwoText[levelNumber].equals(buttonOneText[levelNumber]))
    text(buttonTwoText[levelNumber], width/2 + 100, height - 150 + buttonSize.y);
}
 

// enables the butons to be clickable and creates the logic for tracing each level 
void mousePressed() {
  playerChoice = buttonSelection ();
}
 
int buttonSelection ()
{
  // default 
  int thingToReturn = 0;
 
  if (mouseX >= (width/2 - buttonSize.x - 100) && 
    mouseX <= (width/2 - 100) && 
    mouseY >= (height - 100) &&
    mouseY <= (height - 100 + buttonSize.y))
  {
    println ("inside the left button on X");
    if (mousePressed)
    {
      println ("mouse pressed inside the left button");
      thingToReturn = 1;
    }
  } else if (mouseX >= (width/2 + 100) &&
    mouseX <= (width/2 + 100 + buttonSize.x) && 
    mouseY >= (height - 100) && 
    mouseY <= (height - 100 + buttonSize.y))
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
 

  
 
// the choices for all fifteen levels are displayed here, built upon the linear flow of the game
 
void LevelZero ()
{
  if (playerChoice == 1)
  {
    levelNumber = 1;
  } else if (playerChoice == 2)
  {
    levelNumber = 12;
  }
  playerChoice=0;
  println("I'm in Level 0");
}
 
 
void LevelOne ()
{
  if (playerChoice == 1)
  {
    levelNumber = 8;
    println("Hello from the other side");
  } else if (playerChoice == 2)
  {
    levelNumber = 2;
  }
  println ("I'm in level 2");
  playerChoice=0;
}
 
void LevelTwo ()
{
  if (playerChoice == 1)
  {
    levelNumber = 4;
  } else if (playerChoice == 2)
  {
    levelNumber = 3;
  }
  println ("I'm in level 2");
  playerChoice=0;
}
 
void LevelThree()
{
  if (playerChoice == 1)
  {
    levelNumber = 4;
  } else if (playerChoice == 2)
  {
    levelNumber = 9;
  }
  println ("I'm in level 3");
  playerChoice=0;
}
 
void LevelFour()
{
  if (playerChoice == 1)
  {
    levelNumber = 5;
  } else if (playerChoice == 2)
  {
    levelNumber = 10;
  }
  println ("I'm in level 4");
  playerChoice=0;
}
 
void LevelFive()
{
  if (playerChoice == 1)
  {
    levelNumber = 6;
  } else if (playerChoice == 2)
  {
    levelNumber = 11;
  }
  println ("I'm in level 5");
  playerChoice=0;
}
 
void LevelSix()
{
  if (playerChoice == 1)
  {
    levelNumber = 7;
  } else if (playerChoice == 2)
  {
    levelNumber = 14;
  }
  println ("I'm in level 6");
  playerChoice=0;
}
 
void LevelSeven()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 7");
  playerChoice=0;
}
void LevelEight()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 8");
  playerChoice=0;
}
 
void LevelNine()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 9");
  playerChoice=0;
}
 
void LevelTen()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 10");
  playerChoice=0;
}
void LevelEleven()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 11");
  playerChoice=0;
}
 
void LevelTwelve()
{
  if (playerChoice == 1)
  {
    levelNumber = 13;
  } else if (playerChoice == 2)
  {
    levelNumber = 2;
  }
  println ("I'm in level 12");
  playerChoice=0;
}
 
void LevelThirteen()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 13");
  playerChoice=0;
}
void LevelFourteen()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 14");
  playerChoice=0;
}
