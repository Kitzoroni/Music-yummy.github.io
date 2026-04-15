/* Text, Simple ... Hardcoded
/* Aspect Ratio
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images

//Population: DIVs
int numberOfButtons = 11;
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
//change numbers to own

//Div: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
//
//Strings, text, Literal
String title = "Song";

//Fonts from OS
println("Start of Console");
String[] fontList = PFont.list();
printArray(fontList);
//Tools / Create Font / Find Font / Do not Press "OK", known conflict between loadFont() and CreateFont() 

//Fonts from OS
float fontSize = appHeight; //Entire Program, Algorithm to have smallest font size
//println( fontSize );
PFont font; //Font Variabnle Name, able to have more than one Font
String constantiaItalic = "Constantia-Italic"; //check fonts
font = createFont(constantiaItalic, fontSize);

//Drawing Text
color redInk = #A53F52;
color whiteInk = #FFFFFF; //Grey scale is 255
color resetInk = whiteInk;
fill(redInk);
//Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X and Y, see Processing.org / Reference
//Values: [LEFT CENTER RIGHT ] & [TOP CENTER BOTTOM BASELINE ]
float constantDecrase = 0.99;
int iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
while (textWidth(title) > songTitleDivWidth) {
  println("While #1");
  iWhile++;
  if ( iWhile>100 ) {
  println("Infinite WHILE Loop");
  exit();
  }
  fontSize *= constantDecrease;
  textFont(font, fontSize);
}
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
textFont(font, fontSize2); //must include textSize() before text() and textWidth()
int iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
while (textWidth(title) > songTitleDivWidth) {
  println("While #1");
  iWhile++;
  if ( iWhile>100 ) {
  println("Infinite WHILE Loop");
  exit();
  }
  fontSize2 *= constantDecrease2;
  textFont(font, fontSize);
}
text( title, quitX, quitY, quitWidth, quitWidth, quitHeight ); 
textFont(font, fontSize3); //must include textSize() before text() and textWidth()
int iWhile=0; //copy this
textFont(font, fontSize); //must include textSize() before text() and textWidth()
while (textWidth(title) > songTitleDivWidth) {
  println("While #1");
  iWhile++;
  if ( iWhile>100 ) {
  println("Infinite WHILE Loop");
  exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize);
}
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height ); 
fill(resetInk);

//Aspect Ratio for Constantia-Italic
fontsize = 10; //Biggest 83
float divHeightconstantiaItalic = songTitleDivWidth; //Key:Value, value=120
float constantiaItalicAspectRatio = fontSize / divHeightConstantiaItalic;
fontSize = songTitleDivWidth*constantiaItalicAspectRatio*0.9;
fontSize = songTitleDivHeight*constantiaItalicAspectRatio * textAdjustment;
fontSize2 = messageDIV_Height*constantiaItalicAspectRatio * textAdjustment;
fontSize3 = quitHeight*constantiaItalicAspectRatio * textAdjustment;
println( fontSize );
