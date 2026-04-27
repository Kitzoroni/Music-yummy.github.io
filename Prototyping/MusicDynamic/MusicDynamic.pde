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
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() {
//Display
//fullScreen(); //height width
int appWidth = width;
int appHeight = height;
//




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
  /* Alternate Song Name Text
   String songName1 = "groove";
   String songName2 = "Beat_Your_Competition";
   String songName3 = "Cycles";
   String ongName4 = "Eureka";
   String ongName5 = "Ghost_Walk";
   String ongName7 = "Newsroom";
   String ongName8 = "Start_Your_Engines";
   String ongName9 = "The_Simplest";
   */
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
  //playList[currentSong].play();
  soundEffects[currentSong].play();
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
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
