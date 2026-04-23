/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population: DIVs
//Note: int(i/4) && i%4==2,3 (width, height)
int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;
float songTitleDivX = beginningButtonSpace;
float songTitleDivY = appHeight*1.5/20;
float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float songTitleDivHeight = appHeight*1/10;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;
//
//DIV: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
//
<<<<<<< HEAD
//Strings, Text, Literal
//Note: metaData.mp3
String title = "Text Place Holder!"; //
/* Full String longer than Rectangle, "Wahoo! I changed 2D Size."
 - divHeight must fit the font size or text is not shown (Advanced, error check includes %-decrease)
 - Fonts includes the in WHITE SPACE around the foreground "coloured ink"
 - divWidth must include the font size
 - if font is too big, wrap around happens
 - OR full string is not drawn
 */
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
// Students enter all text from Case Study
//
// Fonts from OS
//RECT(#) && RECT(#)+3
float fontSize1 = appHeight; //Entire Program, Algorithm to have smallest font size
float fontSize12 = appHeight; //Entire Program, Algorithm to have smallest font size
float fontSize13 = appHeight; //Entire Program, Algorithm to have smallest font size
PFont font; //Font Varaible Name, able to have more than one Font
String constantia = "constantia"; //Spelling of the Font Matters, see PFont.list() v Create Font above
font = createFont(constantia, fontSize1);
//
// Aspect Ratio for Constantia
float fontSize1Constantia = 10; //Default fontSize1 for 100%
float divHeightConstantia = songTitleDivHeight; //Key:Value, value=120
float constantiaAspectRatio = fontSize1Constantia / divHeightConstantia; //#<1
//RECT(#) && RECT(#)+3
fontSize1 = songTitleDivHeight * constantiaAspectRatio;
fontSize12 = messageDIV_Height * constantiaAspectRatio;
fontSize13 = quitHeight * constantiaAspectRatio;
//
=======
//Strings, text, Literal
String title = "Song";

//Fonts from OS
println("Start of Console");
String[] fontList = PFont.list();//
printArray(fontList);
//Tools / Create Font / Find Font / Do not Press "OK", known conflict between loadFont() and CreateFont()

//Fonts from OS
float fontSize = appHeight; //Entire Program, Algorithm to have smallest font size
float fontSize2 = appHeight;
float fontSize3 = appHeight;
PFont font; //Font Variable Name, able to have more than one Font
String constantia = "Constantia"; //check fonts
font = createFont(constantia, fontSize);

>>>>>>> ee285c6b340221271e0ea1fe2958f119b737325a
//Drawing Text
color redInk = #A53F52; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(redInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
<<<<<<< HEAD
textAlign (CENTER, BOTTOM); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
// Procedure Passing RECT(#2) && fontSize1(RECT#)
float constantDecrease = 0.99;
int iWhile=0;
textFont(font, fontSize1); //must include textSize() before text() & textWidth()
while ( textWidth(title) > songTitleDivWidth ) {
  //println("While #1"); //Infinite WHILE Check
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infninte WHILE Loop");
    exit();
=======
textAlign (CENTER, CENTER); //Align X and Y, see Processing.org / Reference
//Values: [LEFT CENTER RIGHT ] & [TOP CENTER BOTTOM BASELINE ]

float constantDecrease = 0.99;
int iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
while (textWidth(title) > songTitleDivWidth) {
  //println("While #1");

float constantDecrease = 0.99;
int iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
while (textWidth(title) > songTitleDivWidth) {
  //println("While #1");

  iWhile++;
  if ( iWhile>1000) {
  println("Infinite WHILE Loop");
  exit();
>>>>>>> ee285c6b340221271e0ea1fe2958f119b737325a
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize1);
}
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
<<<<<<< HEAD
//
textFont(font, fontSize12); 
iWhile=0;
while ( textWidth(title) > messageDIV_Width ) {
  //println("While #2"); //Infinite WHILE Check
=======
textFont(font, fontSize2); //must include textSize() before text() and textWidth()

iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
iWhile=0;
while (textWidth(title) > messageDIV_Width) {
  //println("While #1");
  iWhile++;
  if ( iWhile>1000 ) {
  println("Infinite WHILE Loop");
  exit();
  }
  fontSize2 *= constantDecrease; //HERE
  textFont(font, fontSize2);
}
int iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
while (textWidth(title) > songTitleDivWidth) {
  println("While #1");
>>>>>>> ee285c6b340221271e0ea1fe2958f119b737325a
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infninte WHILE Loop");
    exit();
  }
<<<<<<< HEAD
  fontSize12 *= constantDecrease;
  textFont(font, fontSize12);
}
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
//
textFont(font, fontSize13); 
iWhile=0;
while ( textWidth(title) > quitWidth ) {
  //println("While #3"); //Infinite WHILE Check
=======
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text( title, quitX, quitY, quitWidth, quitWidth, quitHeight );
textFont(font, fontSize3); //must include textSize() before text() and textWidth()
int iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
while (textWidth(title) > songTitleDivWidth) {
  println("While #1");
>>>>>>> ee285c6b340221271e0ea1fe2958f119b737325a
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infninte WHILE Loop");
    exit();
  }
<<<<<<< HEAD
  fontSize13 *= constantDecrease;
  textFont(font, fontSize13);
}
text( title, quitX, quitY, quitWidth, quitHeight );
fill(resetInk);
//
println(songTitleDivHeight);
=======
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
fill(resetInk);

//Aspect Ratio for Constantia-Italic
float fontSizeConstantia = 10; //Default fontSize for 100%
float divHeightConstantia = songTitleDivHeight;
float constantiaAspectRatio = fontSizeConstantia / divHeightConstantia; //#<1
float textAdjustment = 0.9;
fontSize = songTitleDivHeight*constantiaAspectRatio * textAdjustment;
fontSize2 = messageDIV_Height*constantiaAspectRatio * textAdjustment;
fontSize3 = quitHeight*constantiaAspectRatio * textAdjustment;
//println( fontSize );

//Aspect Ratio for Constantia-Italic
float fontSizeConstantia = 10; //Default fontSize for 100%
float divHeightConstantia = songTitleDivHeight;
float constantiaAspectRatio = fontSizeconstantia / divHeightconstantia;
fontSize1 = songTitleDivHeight * constantiaAspectRatio;
fontSize2 = messageDIV_Height * constantiaAspectRatio;
fontSize3 = quitHeight * constantiaAspectRatio;

//
>>>>>>> ee285c6b340221271e0ea1fe2958f119b737325a
