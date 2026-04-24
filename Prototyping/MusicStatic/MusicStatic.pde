//Library - minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initiates entire class
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
  //Music Loading
  minim = new Minim(this);
  String upArrow = "../../"; //or ..
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependenciesFolder = "Dependencies";
  String songName = "Burn"; //download home
  String soundEffect = "splat";
  String fileExtension_mp3 = ".mp3";
  //
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Burn";
  currentSong++;
  songName[currentSong] = "Burn";
  currentSong++;
  songName[currentSong] = "song";
  currentSong++;
  songName[currentSong] = "song";
  currentSong=0;

  
  
  //del this and check music
  
  
  //
  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ;
    for ( int i=0; i<numberOfSongs ; i++ ) {
  pathway = musicDirectory + songName[i] + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( pathway );
  file = soundEffectsDirectory + soundEffect + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( pathway );
    }
    pathway = soundEffectsDirectory + soundEffect1 + fileExtension_.mp3 //check github
  //
 for ( int i=0; i<numberOfSongs ; i++ ) {
  if ( playList[currentSong]==null ) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    exit();
  }
 }
 if ( soundEffects[currentSong]==null ) {
   println("The Sound Effects did not load properly");
   printArray(soundEffects);
   exit();
 }

 

}//End Setup
//
void draw() { //End Draw
  playList[currentSong].play();
//
void mousePressed() {

//
void keyPressed() {//End Key Pressed
//
//End MAIN Program




















//Static Music (download music home)
