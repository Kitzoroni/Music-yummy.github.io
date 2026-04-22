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
int numberOfSongs = 1;
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
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependenciesFolder = "Dependencies";
  String songName = "Burn"; //download home
  String soundEffect = "splat";
  String fileExtension_mp3 = ".mp3";
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "Burn";
  songName[2] = "song";
  songName[3] = "song";
  
  
  String songName2 = "idk"
  String soundEffect2 = "splat";
  String fileExtension_mp3 = ".mp3";
  
  
  //del this and check music
  
  
  //
  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ;
  String file = musicDirectory + songName + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  file = soundEffectsDirectory + soundEffect + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( file );
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
    printArray(playList);
  }
}//End Setup
//
void draw() {}//End Draw
//
void mousePressed(){}//End Mouse Pressed
//
void keyPressed() {}//End Key Pressed
//
//End MAIN Program




















//Static Music (download music home)
