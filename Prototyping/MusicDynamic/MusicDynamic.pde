//Library - minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
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




















//Static Music (download music home)
