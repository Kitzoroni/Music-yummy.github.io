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
  String upArrow = ".."; // .. or ../../
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependenciesFolder = "Dependencies";
  String songName = "Burn"; //download home
  String soundEffect = "splat";
  String fileExtension_mp3 = ".mp3";
  //
String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open ; //Concatenation
String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open ; //Concatenation
String pathway = musicDirectory + songName + fileExtension_mp3 ;
println(pathway);
playList[ currentSong ] = minim.loadFile( pathway ); 
pathway = soundEffectsDirectory + soundEffect + fileExtension_mp3; 
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
