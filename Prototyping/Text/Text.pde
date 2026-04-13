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
float quitX = appWidth - 
float quitY = 0;
float quitWidth = appHeight*
float quitHeight
float songImageDivX = beginningButtonSpace;
float songImageDivY = appHeight*
float messageDIV_X = appWidth* * beginningButtonSpace?*
float messageDIV_Y = appHeight?/?*
float messageDIV_Width = appWidth?* - beginningButtonSpace?*
float messageDIV_Height = appHeight*?/? 



//Div: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDivY, messageDIV_Width, messageDIV_Height);
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
PFont font; //Font Variabnle Name, able to have more than one Font
String constantiaItalic48 = "ConstantiaItalic48"; //check fonts
font = createFont(constantia-Italic-48, fontSize);

//Drawing Text
color redInk = #A53F52;
color whiteInk = #FFFFFF; //Grey scale is 255
color resetInk = whiteInk;
fill(redInk);
//Grey Scale 0-255
textFont(font, fontSize); //must include textSize() before text() and textWidth()
text( title, songTitleDivX, songTitleDivY songTitleDivWidth, songTitleDivHeight );
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
fill(resetInk);

//Aspect Ratio for Constantia-Italic-48?
fontsize = 10; //Biggest 83
font divHeightconstantiaItalic48 = songTitleDivWidth;
float constantiaItalic48AspectRatio = fontSize / divHeightconstantiaItalic48;
