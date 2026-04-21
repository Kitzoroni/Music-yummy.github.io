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
String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ;
String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ;
String file = musicDirectory + songName + fileExtension_mp3;
playList[ currentSong ] = minim.loadFile( file );
file = soundEffectsDirectory + soundEffect + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile( file );
//
playList[currentSong].play();

//Static Music (download music home)
