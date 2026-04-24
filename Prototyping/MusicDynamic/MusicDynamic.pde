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

//Music Loading
minim = new Minim(this);
String upArrow = "../../";
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




















//Static Music (download music home)
