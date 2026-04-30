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
void setup() {
//Display
//fullScreen(); //height width
int appWidth = width;
int appHeight = height;
// //CHECK THIS
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



//Music Loading
minim = new Minim(this);
String upArrow = ".."; //.. or ../../
String open = "/";
String musicFolder = "Music";
String soundEffectsFolder = "Sound Effects";
String dependenciesFolder = "Dependencies";
String songName = "Burn"; //download home
String soundEffect = "lancer-splat";
String fileExtension_mp3 = ".mp3";
//
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Burn";
  currentSong++;
  songName[currentSong] = "song";
  currentSong++;
  songName[currentSong] = "song";
  currentSong++;
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
    //
}//End Setup
//
void draw() {
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitle); //ADD it
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
font = createFont(constantia, fontSize);
//
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
text ( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );



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
