/* Music App, Final project
*/
// Minim Library
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
void setup() {}//End Setup
//
void draw() {}//End Draw
//
void mousePressed () {} //End
//
void keyPressed() {} //End
//
//
/* DIVs 2D Rectangles
*/
//
println(displayWidth, displayHeight); 
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 260;
int paperHeight = 202;
float songImageDivX = appWidth * 187 / paperWidth;
float songImageDivY = appHeight *  31.1 / paperHeight;
float songImageDivWidth = appWidth * 63 / paperWidth;
float songImageDivHeight = appHeight * 70 / paperHeight;
//
float songLyricsDivX = appWidth * 89 / paperWidth;
float songLyricsDivY = appHeight *  31.1 / paperHeight;
float songLyricsDivWidth = appWidth * 70 / paperWidth;
float songLyricsDivHeight = appHeight * 159 / paperHeight;
//
float songScrollDivX = appWidth * 65 / paperWidth;
float songScrollDivY = appHeight *  31.1 / paperHeight;
float songScrollDivWidth = appWidth * 3 / paperWidth;
float songScrollDivHeight = appHeight * 165 / paperHeight;
//
float songPinDivX = appWidth * 62 / paperWidth;
float songPinDivY = appHeight *  0 / paperHeight;
float songPinDivWidth = appWidth * 6 / paperWidth;
float songPinDivHeight = appHeight * 7 / paperHeight;
//
float lyricsExitDivX = appWidth * 159 / paperWidth;
float lyricsExitDivY = appHeight *  24 / paperHeight;
float lyricsExitDivWidth = appWidth * 6 / paperWidth;
float lyricsExitDivHeight = appHeight * 7 / paperHeight;
//
float songShuffleDivX = appWidth * 194.5 / paperWidth;
float songShuffleDivY = appHeight * 113 / paperHeight;
float songShuffleDivWidth = appWidth * 12 / paperWidth;
float songShuffleDivHeight = appHeight * 14 / paperHeight;
//
float songRewindDivX = appWidth * 194.5 / paperWidth;
float songRewindDivY = appHeight * 162 / paperHeight;
float songRewindDivWidth = appWidth * 12 / paperWidth;
float songRewindDivHeight = appHeight * 14 / paperHeight;
//
float songPauseDivX = appWidth * 215.5 / paperWidth;
float songPauseDivY = appHeight * 113 / paperHeight;
float songPauseDivWidth = appWidth * 12 / paperWidth;
float songPauseDivHeight = appHeight * 14 / paperHeight;
//
float songDownloadDivX = appWidth * 194.5 / paperWidth;
float songDownloadDivY = appHeight * 129.5 / paperHeight;
float songDownloadDivWidth = appWidth * 12 / paperWidth;
float songDownloadDivHeight = appHeight * 14 / paperHeight;
//
float songPlayDivX = appWidth * 215.5 / paperWidth;
float songPlayDivY = appHeight * 129.5 / paperHeight;
float songPlayDivWidth = appWidth * 12 / paperWidth;
float songPlayDivHeight = appHeight * 14 / paperHeight;
//
float songFullDivX = appWidth * 236.5 / paperWidth;
float songFullDivY = appHeight * 129.5 / paperHeight;
float songFullDivWidth = appWidth * 12 / paperWidth;
float songFullDivHeight = appHeight * 14 / paperHeight;
//
float songHeartDivX = appWidth * 215.5 / paperWidth;
float songHeartDivY = appHeight * 146.5 / paperHeight;
float songHeartDivWidth = appWidth * 12 / paperWidth;
float songHeartDivHeight = appHeight * 14 / paperHeight;
//
float songLoopDivX = appWidth * 236.5 / paperWidth;
float songLoopDivY = appHeight * 113 / paperHeight;
float songLoopDivWidth = appWidth * 12 / paperWidth;
float songLoopDivHeight = appHeight * 14 / paperHeight;
//
float songEar1DivX = appWidth * 187 / paperWidth;
float songEar1DivY = appHeight * 14.5 / paperHeight;
float songEar1DivWidth = appWidth * 21 / paperWidth;
float songEar1DivHeight = appHeight * 17 / paperHeight;
//
float songEar2DivX = appWidth * 229 / paperWidth;
float songEar2DivY = appHeight * 14.5 / paperHeight;
float songEar2DivWidth = appWidth * 21 / paperWidth;
float songEar2DivHeight = appHeight * 17 / paperHeight;
//
float songNextDivX = appWidth * 250 / paperWidth;
float songNextDivY = appHeight * 40 / paperHeight;
float songNextDivWidth = appWidth * 12 / paperWidth;
float songNextDivHeight = appHeight * 14 / paperHeight;
//
float songBackDivX = appWidth * 174.9 / paperWidth;
float songBackDivY = appHeight * 40 / paperHeight;
float songBackDivWidth = appWidth * 12 / paperWidth;
float songBackDivHeight = appHeight * 14 / paperHeight;
//
float songFastDivX = appWidth * 236.5 / paperWidth;
float songFastDivY = appHeight * 162 / paperHeight;
float songFastDivWidth = appWidth * 12 / paperWidth;
float songFastDivHeight = appHeight * 14 / paperHeight;
//
float songBarDivX = appWidth * 180.5 / paperWidth;
float songBarDivY = appHeight * 108.5 / paperHeight;
float songBarDivWidth = appWidth * 77 / paperWidth;
float songBarDivHeight = appHeight * 0.4 / paperHeight;
//
float songLibraryDivX = appWidth * 0 / paperWidth;
float songLibraryDivY = appHeight * 0 / paperHeight;
float songLibraryDivWidth = appWidth *  61 / paperWidth;
float songLibraryDivHeight = appHeight * 32 / paperHeight;
//
float songSong1DivX = appWidth * 0 / paperWidth;
float songSong1DivY = appHeight * 31.1 / paperHeight;
float songSong1DivWidth = appWidth *  61 / paperWidth;
float songSong1DivHeight = appHeight * 21.5 / paperHeight;
//
float songSong2DivX = appWidth * 0 / paperWidth;
float songSong2DivY = appHeight * 52.6 / paperHeight;
float songSong2DivWidth = appWidth *  61 / paperWidth;
float songSong2DivHeight = appHeight * 21.5 / paperHeight;
//
float songSong3DivX = appWidth * 0 / paperWidth;
float songSong3DivY = appHeight * 74.1 / paperHeight;
float songSong3DivWidth = appWidth *  61 / paperWidth;
float songSong3DivHeight = appHeight * 21.5 / paperHeight;
//
float songSongDivX = appWidth * 0 / paperWidth;
float songSongDivY = appHeight * 95.6 / paperHeight;
float songSongDivWidth = appWidth *  61 / paperWidth;
float songSongDivHeight = appHeight * 115 / paperHeight;

//rect( DivX, DivY, DivWidth, DivHeight );
rect( songImageDivX, songImageDivY, songImageDivWidth, songImageDivHeight );
rect( songLyricsDivX, songLyricsDivY, songLyricsDivWidth, songLyricsDivHeight );
rect( songScrollDivX, songScrollDivY, songScrollDivWidth, songScrollDivHeight );
rect( songPinDivX, songPinDivY, songPinDivWidth, songPinDivHeight );
rect( songEar1DivX, songEar1DivY, songEar1DivWidth, songEar1DivHeight );
rect( songEar2DivX, songEar2DivY, songEar2DivWidth, songEar2DivHeight );
rect( lyricsExitDivX, lyricsExitDivY, lyricsExitDivWidth, lyricsExitDivHeight );
rect( songFastDivX, songFastDivY, songFastDivWidth, songFastDivHeight );
rect( songRewindDivX, songRewindDivY, songRewindDivWidth, songRewindDivHeight );
rect( songPauseDivX, songPauseDivY, songPauseDivWidth, songPauseDivHeight );
rect( songPlayDivX, songPlayDivY, songPlayDivWidth, songPlayDivHeight );
rect( songLoopDivX, songLoopDivY, songLoopDivWidth, songLoopDivHeight );
rect( songNextDivX, songNextDivY, songNextDivWidth, songNextDivHeight );
rect( songBackDivX, songBackDivY, songBackDivWidth, songBackDivHeight );
rect( songShuffleDivX, songShuffleDivY, songShuffleDivWidth, songShuffleDivHeight );
rect( songBarDivX, songBarDivY, songBarDivWidth, songBarDivHeight );
rect( songLibraryDivX, songLibraryDivY, songLibraryDivWidth, songLibraryDivHeight );
rect( songSong1DivX, songSong1DivY, songSong1DivWidth, songSong1DivHeight );
rect( songSong2DivX, songSong2DivY, songSong2DivWidth, songSong2DivHeight );
rect( songSong3DivX, songSong3DivY, songSong3DivWidth, songSong3DivHeight );
rect( songSongDivX, songSongDivY, songSongDivWidth, songSongDivHeight );
rect( songFullDivX, songFullDivY, songFullDivWidth, songFullDivHeight );
rect( songHeartDivX, songHeartDivY, songHeartDivWidth, songHeartDivHeight );
rect( songDownloadDivX, songDownloadDivY, songDownloadDivWidth, songDownloadDivHeight );
//
/* Aspect Ratio
*/
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName = "unknownSong";
String imageName2 = "burnSong";
String imageName3 = "foryouSong";
String fileExtension = ".jpg";
String Open = "/";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images
/*
- See Absolute Pathway: C:\Users\e.padilla\Documents\GitHub\Music-yummy.github.io\Dependencies\Images

 - See Relative Pathway: Dependencies\Images
 */
String imageDirectory = upArrow + Open + upArrow + Open + dependenciesFolder + Open + imagesFolder + Open;
String pathway = imageDirectory + imageName + fileExtension;
String pathway2 = imageDirectory + imageName2 + fileExtension;
String pathway3 = imageDirectory + imageName3 + fileExtension;
//println(pathway);
//
PImage image, image2, image3;
image = loadImage( pathway );
image2 = loadImage( pathway2 );
image3 = loadImage( pathway3 );
int imageWidth = 300;
int imageHeight = 300;
int image2Width = 500;
int image2Height = 500;
int image3Width = 640;
int image3Height = 640;
//
//Population: DIVs
int numberOfButtons = 11;
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float imageDivX = beginningButtonSpace;
float imageDivY = appHeight* 31.1/202;
float imageDivWidth = appWidth*63/260 - beginningButtonSpace*0;
float imageDivHeight = appHeight*70/202;

float image2DivX = beginningButtonSpace;  
float image2DivY = appHeight*4.5/20;  
float image2DivWidth = appWidth*63/260 - beginningButtonSpace*0;
float image2DivHeight = appHeight*70/202;

float image3DivX = beginningButtonSpace;
float image3DivY = appHeight*4.5/20;
float image3DivWidth = appWidth*63/260 - beginningButtonSpace*0;
float image3DivHeight = appHeight*70/202;




//Image: Aspect Ratio Algorithm  
println( float(imageWidth)/ float (imageHeight) );
//Ternary Operator for Aspect Ratio
float imageAspectRatio_GreatOne = ( imageWidth > imageHeight ) ?  float(imageWidth) / float(imageHeight) : float(imageHeight) ;
println(imageAspectRatio_GreatOne);
float imageDivWidthAdjusted = imageDivWidth;
float imageDivHeightAdjusted = ( imageWidth >= imageDivWidth ) ? imageDivWidthAdjusted * imageAspectRatio_GreatOne : imageDivWidthAdjusted / imageAspectRatio_GreatOne ;
imageDivWidthAdjusted = 0.99;

float image2AspectRatio_GreatOne = ( image2Width > image2Height ) ?  float(image2Width) / float(image2Height) : float(image2Height) ;
println(image2AspectRatio_GreatOne);
float image2DivWidthAdjusted = image2DivWidth;
float image2DivHeightAdjusted = ( image2Width >= image2DivWidth ) ? image2DivWidthAdjusted * image2AspectRatio_GreatOne : image2DivWidthAdjusted / image2AspectRatio_GreatOne ;
image2DivWidthAdjusted = 0.99;

float image3AspectRatio_GreatOne = ( image3Width > image3Height ) ?  float(image3Width) / float(image3Height) : float(image3Height) ;
println(image3AspectRatio_GreatOne);
float image3DivWidthAdjusted = image3DivWidth;
float image3DivHeightAdjusted = ( image3Width >= image3DivWidth ) ? image3DivWidthAdjusted * image3AspectRatio_GreatOne : image3DivWidthAdjusted / image3AspectRatio_GreatOne ;
image3DivWidthAdjusted = 0.99;

//Div: Image
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
rect(image2DivX, image2DivY, image2DivWidth, image2DivHeight);
rect(image3DivX, image3DivY, image3DivWidth, image3DivHeight);
//
image(image, imageDivX, imageDivY, imageDivWidthAdjusted, imageDivHeightAdjusted);
image(image2, image2DivX, image2DivY, image2DivWidthAdjusted, image2DivHeightAdjusted);
image(image3, image3DivX, image3DivY, image3DivWidthAdjusted, image3DivHeightAdjusted);
image(image, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
image(image2, image2DivX, image2DivY, image2DivWidth, image2DivHeight);
image(image3, image3DivX, image3DivY, image3DivWidth, image3DivHeight);
//
/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//ADD lyric box??
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
//
//Library - minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;  //initates entire class
int numberOfSongs = 1; //Best Practcie
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
//Display
size( 700, 500 ); //width //height
//fullScreen();  //displayWidth //displayHeight
int appWidth = width; //Best Practice
int appHeight = height;
//
//Music Loading - STRUCTURED Review
minim = new Minim(this); //Manditory
String upArrow = "..";
String open = "/";
String musicFolder = "Music"; //Developer Specific
String soundEffectsFolder = "Sound Effects"; //Developer Specific
String dependenciesFolder = "Dependencies"; //Developer Specific
String songName = "Burn";
String soundEffect1 = "splat";
String fileExtension_mp3 = ".mp3";
//
//CAUTION: Mistakes Below
String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ; //Concatenation
String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; //Concatenation
String pathway = musicDirectory + songName + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
println(pathway);
playList[ currentSong ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
println(pathway);
soundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
//
if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
  //See FILE or minim.loadFile
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
  println("Music Pathway", musicDirectory);
   println("Full Music File Pathway", file);
   */
} else {
  playList[currentSong].play();
  //soundEffects[currentSong].play();
  printArray(playList);
}
//Static Music (download music home)
//
//Music Dynamic

//Global Variables
Minim minim; 
int numberOfSongs = 3;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;
//
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
color redInk, resetInk;
float constantDecrease;
int iWhile;
float fontSize, fontSize2, fontSize3;
PFont font;
//
{
void setup() 
}
  //Display
  //fullScreen(); //height width
  int appWidth = width;
  int appHeight = height;
  //DIVS, population
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
  //Rect
  rect(TQuitX, TQuitY, TQuitWidth, TQuitHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(songName2DIV_X, songName2DIV_Y, songName2DIV_Width, songName2DIV_Height);
  rect(songTex3DIVX, songTex3DIVY, songTex3DIVWidth, songTex3DIVHeight);
//
  //Music Loading
  minim = new Minim(this);
  String upArrow = ".."; //.. or ../../
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependenciesFolder = "Dependencies";
  //
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Burn";
  currentSong++;
  songName[currentSong] = "song";
  currentSong++;
  songName[currentSong] = "song";
  currentSong=0;
  //
  String soundEffect1 = "Splat";
  String fileExtension_mp3 = ".mp3";
  //



  //CAUTION: Mistakes Below
  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ; //Concatenation
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; //Concatenation
  String pathway;
  for ( int i=0; i<numberOfSongs; i++ ) {
    //CAUTION: removed ReadMe.txt
    pathway = musicDirectory + songName[i] + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
    println("Inside FOR, pathway:", pathway);
    playList[ i ] = minim.loadFile( pathway );
    playListMetaData[ i ] = playList [ i ].getMetaData();
    println(currentSong);
  }
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( pathway );
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
  }
}

  //
//End Setup
//
void draw() {
  rect( songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  fill(redInk);
  text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleWidth, songTitleHeight );
  fill(resetInk);
  //playList[currentSong].play();
  soundEffects[currentSong].play();
}//End Draw
String x = "X";
//Fonts from OS
float fontSize = songTitleDivHeight;
float fontSize2 = messageDIV_Height;
float fontSize3 = quitHeight;
PFont font;
String constantia = "Constantia";
PFont font;
String font = createFont(constantia, fontSize);
//
//Aspect ratio idk
//Drawing Text
color redInk = #A53F52; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(redInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
textAlign (CENTER, BOTTOM); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]

float constantDecrease = 0.99;
int iWhile=0;
textFont(font, fontSize); //must include textSize() before text() & textWidth()
while ( textWidth(title) > songTitleDivWidth ) {
  //println("While #1"); //Infinite WHILE Check
  iWhile++;
  if ( iWhile>10000 ) { //>1000 means -1 text or i
    println("Infinte WHILE Loop");
    exit();
  }
  fontSize *= constantDecrease;
  textFont(font, fontSize);
}
fill(redInk);
text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
fill(resetInk); //

//



//

void mousePressed() {
}

//End Mouse Pressed
//

void keyPressed() {
}
//

if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
/* Note: double tap is automatic rewind, no pause
 Symbol is two triangles
 This changes what the button might become after it is pressed
 */
if ( key=='O' || key=='o' ) { // Pause
  //
  if ( playList[currentSong].isPlaying() ) {
    playList[currentSong].pause();
  } else {
    playList[currentSong].play();
  }
}
//if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
//
if ( key=='S' | key=='s' ) {
  if ( playList[currentSong].isPlaying() ) {
    playList[currentSong].pause(); //single tap
  } else {
    playList[currentSong].rewind(); //double tap
  }
}
if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
if ( key=='W' || key=='w' ) { // MUTE
  //
  //MUTE Behaviour: stops electricty to speakers, does not stop file
  //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
  //ERROR: if song near end of file, user will not know song is at the end
  //Known ERROR: once song plays, MUTE acts like it doesn't work
  if ( playList[currentSong].isMuted() ) {
    //ERROR: song might not be playing
    //CATCH: ask .isPlaying() or !.isPlaying()
    playList[currentSong].unmute();
  } else {
    //Possible ERROR: Might rewind the song
    playList[currentSong].mute();
  }
}
if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
if ( key=='Q' || key=='q' ) exit(); // QUIT
//
if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
  if ( playList[currentSong].isPlaying() ) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    //
    if ( currentSong==numberOfSongs-1 ) {
      currentSong = 0;
    } else {
      currentSong++;
    }
    playList[currentSong].play();
  } else {
    //
    playList[currentSong].rewind();
    //
    if ( currentSong==numberOfSongs-1 ) {
      currentSong = 0;
    } else {
      currentSong++;
    }
    // NEXT will not automatically play the song
    //song[currentSong].play();
  }
}
//if ( key=='B' || key=='b' ) ; // Previous, Back //Students to finish
//
if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
