/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population: DIVs
int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float TQuitX = appWidth - appHeight*12.6/20;
float TQuitY = 130;
float TQuitWidth = appHeight*1/20;
float TQuitHeight = appHeight*1/20;
float songTitleDivX = beginningButtonSpace*0;
float songTitleDivY = appHeight*3/20;
float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*3.5;
float songTitleDivHeight = appHeight*1.19/10;

float songName2DIV_X = appWidth*0 + beginningButtonSpace*0;
float songName2DIV_Y = appHeight*0.65/20;
float songName2DIV_Width = appWidth*1/2 - beginningButtonSpace*3.5;
float songName2DIV_Height = appHeight*1.19/10;

float songTex3DIVX = appWidth*0 + beginningButtonSpace*0;
float songTex3DIVY = appHeight*5/20;
float songTex3DIVWidth = appWidth*1/2 - beginningButtonSpace*3.5;
float songTex3DIVHeight = appHeight*1.19/10;
//
//DIV: Image
rect(TQuitX, TQuitY, TQuitWidth, TQuitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(songName2DIV_X, songName2DIV_Y, songName2DIV_Width, songName2DIV_Height);
rect(songTex3DIVX, songTex3DIVY, songTex3DIVWidth, songTex3DIVHeight);
//
//Strings, Text, Literal
String title = "Burn";
String name = "Unknown";
String text = "For you";
String quit = "X";
//
// Fonts from OS
//rect(height) is biggest font is word is the smallest
float fontSize = songTitleDivHeight; //1:1 Font Height to rectHeight
float fontSize2 = songName2DIV_Height; 
float fontSize3 = TQuitHeight; 
PFont font; //Font Variable Name, able to have more than one Font
String constantia = "Constantia"; //Spelling of the Font Matters, see PFont.list() v Create Font above
font = createFont(constantia, fontSize);
//
//Drawing Text
color redInk = #A53F52; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //GreyScale is 255
color resetInk = whiteInk;
fill(redInk); //Ink, hexidecimal copied from Color Selector
//Grayscale 0-255
textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
//Aspect Ratio for Constantia-Italic
float fontSizeConstantia = 10; //Default fontSize for 100%
float divHeightConstantia = songTitleDivHeight;
float constantiaAspectRatio = fontSizeConstantia / divHeightConstantia; //#<1
float textAdjustment = 7;
fontSize = songTitleDivHeight*constantiaAspectRatio * textAdjustment;
fontSize2 = songName2DIV_Height*constantiaAspectRatio * textAdjustment;
fontSize3 = songTex3DIVHeight*constantiaAspectRatio * textAdjustment;
//
// Procedure Passing RECT(#2) && fontSize(RECT#)
float constantDecrease = 0.99;
int iWhile=0;
textFont(font, fontSize); //must include textSize() before text() & textWidth()
while ( textWidth(title) > songTitleDivWidth ) {
  //println("While #1"); //Infinite WHILE Check
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize *= constantDecrease;
  textFont(font, fontSize); //happens before text()
}
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
text( name, songName2DIV_X, songName2DIV_Y, songName2DIV_Width, songName2DIV_Height );
text( text, songTex3DIVX, songTex3DIVY, songTex3DIVWidth, songTex3DIVY );
text( quit, TQuitX, TQuitY, TQuitWidth, TQuitY );
//
textFont(font, fontSize2); //must include textSize() before text() & textWidth()
iWhile=0;
while ( textWidth(title) > songName2DIV_Width ) {
  //println("While #2"); //Infinite WHILE Check
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text( name, songName2DIV_X, songName2DIV_Y, songName2DIV_Width, songName2DIV_Height );
//
textFont(font, fontSize3); //must include textSize() before text() & textWidth()
iWhile=0;
while ( textWidth(title) > TQuitWidth ) {
  //println("While #3"); //Infinite WHILE Check
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
fill(resetInk);
//
//println(fontSize, fontSize2, fontSize3);
