//Library
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
String songName2 = "Unknown";
String songName3 = "For you";
//String songName3 = "For you";
String soundEffect1 = "splat";
String fileExtension_mp3 = ".mp3";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Music
/*
- See Absolute Pathway: C:\Users\e.padilla\Documents\GitHub\Music-yummy.github.io\Dependencies\Music

 - See Relative Pathway: Dependencies\Music
 */
//CAUTION: Mistakes Below
String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open;
String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; //Concatenation
String pathway = musicDirectory + songName + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
String pathway2 = musicDirectory + songName2 + fileExtension_mp3;
String pathway3 = musicDirectory + songName3 + fileExtension_mp3;
//String pathway3 = musicDirectory + songName3 + fileExtension_mp3;
println(pathway);
println(pathway2);
println(pathway3);
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
