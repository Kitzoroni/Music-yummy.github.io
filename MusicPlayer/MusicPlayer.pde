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
/* Global Variables
 - Possible DIV-vars needed in draw(), etc
 - MUST: Music Button-Vars, possibly associated DIV-vars
 */
//
void setup() {//End Setup
  //Display
  fullScreen();
  int appWidth = width;
  int appHeight = height;
  //DIVs
  //Rect ( Divs );
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
  //Symbols
  //Population using unitless ratios (i.e. millimeters to pixels)
  //
  //DIVS
  float DivX = appWidth * 1/4;
  float DivY = appHeight * 1/4;
  float DivWidth = appWidth * 1/2;
  float DivHeight = appHeight * 1/2;
  //
  //Text Setup
  //
  //Literal Text String
  //
  //Font Size with DIV-Height Variables
  //2D Music Symbols and Text & font variables
  float playSymbolDivX1 = DivX + DivWidth*1/4;
  float playSymbolDivY2 = DivY +  DivHeight*1/4;
  float playSymbolDivX3 = DivX + DivWidth*2/4;
  float playSymbolDivY4 = DivY +  DivHeight*1/2;
  float playSymbolDivX5 = DivX + DivWidth*1/4;
  float playSymbolDivY6 = DivY +  DivHeight*3/4;
  //
  float fastSymbolDivX1 = DivX + DivWidth*1/4;
  float fastSymbolDivY2 = DivY + DivHeight*1/4;
  float fastSymbolDivX3 = DivX + DivWidth*2/4;
  float fastSymbolDivY4 = DivY + DivHeight*1/2;
  float fastSymbolDivX5 = DivX + DivWidth*1/4;
  float fastSymbolDivY6 = DivY + DivHeight*3/4;
  float fastSymbolDivX7 = DivX + DivWidth*1/2;
  float fastSymbolDivY8 = DivY + DivHeight*1/4;
  float fastSymbolDivX9 = DivX + DivWidth*3/4;
  float fastSymbolDivY10 = DivY + DivHeight*1/2;
  float fastSymbolDivX11 = DivX + DivWidth*1/2;
  float fastSymbolDivY12 = DivY + DivHeight*3/4;
  //
  float rewindSymbolDivX1 = DivX + DivWidth*1/2;
  float rewindSymbolDivY2 = DivY + DivHeight*1/4;
  float rewindSymbolDivX3 = DivX + DivWidth*1/4;
  float rewindSymbolDivY4 = DivY + DivHeight*1/2;
  float rewindSymbolDivX5 = DivX + DivWidth*1/2;
  float rewindSymbolDivY6 = DivY + DivHeight*3/4;
  float rewindSymbolDivX7 = DivX + DivWidth*3/4;
  float rewindSymbolDivY8= DivY + DivHeight*1/4;
  float rewindSymbolDivX9= DivX + DivWidth*1/2;
  float rewindSymbolDivY10 = DivY + DivHeight*1/2;
  float rewindSymbolDivX11 = DivX + DivWidth*3/4;
  float rewindSymbolDivY12 = DivY+ DivHeight*3/4;

  //
  float nextSymbolDivX1 = DivX + DivWidth*1/4;
  float nextSymbolDivY2 = DivY + DivHeight*1/4;
  float nextSymbolDivX3 = DivX + DivWidth*2/4;
  float nextSymbolDivY4 = DivY + DivHeight*1/2;
  float nextSymbolDivX5 = DivX + DivWidth*1/4;
  float nextSymbolDivY6 = DivY + DivHeight*3/4;
  float nextSymbolDivX7 = DivX + DivWidth*1/2;
  float nextSymbolDivY8 =  DivY + DivHeight*1/4;
  float nextSymbolDivWidth9 = DivWidth*1/8;
  float nextSymbolDivHeight10 = DivHeight*1/2;
  //
  float backSymbolDivX1 = DivX + DivWidth*5/8;
  float backSymbolDivY2 = DivY + DivHeight*1/4;
  float backSymbolDivX3 = DivX + DivWidth*3/8;
  float backSymbolDivY4 = DivY + DivHeight*1/2;
  float backSymbolDivX5 = DivX + DivWidth*5/8;
  float backSymbolDivY6 = DivY + DivHeight*3/4;
  float backSymbolDivX7 = DivX + DivWidth*1/4;
  float backSymbolDivY8 =  DivY + DivHeight*1/4;
  float backSymbolDivWidth9 = DivWidth*1/8;
  float backSymbolDivHeight10 = DivHeight*1/2;
  //
  float pauseSymbolDivX1 = DivX + DivWidth*1/4;
  float pauseSymbolDivY2 = DivY + DivHeight*1/4;
  float pauseSymbolDivWidth3 = DivWidth*1/8;
  float pauseSymbolDivHeight4 = DivHeight*2/4;
  float pauseSymbolDivX5 = DivX + DivWidth*5/8;
  float pauseSymbolDivY6 = DivY + DivHeight*1/4;
  float pauseSymbolDivWidth7 = DivWidth*1/8;
  float pauseSymbolDivHeight8 = DivHeight*2/4;
  //
  float exitSymbolDivX1 = DivX + DivWidth*3/4;
  float exitSymbolDivY2 = DivY + DivHeight*1/4;
  float exitSymbolDivX3 = DivX + DivWidth*1/4;
  float exitSymbolDivY4 = DivY + DivHeight*1/4;
  float exitSymbolDivX5 = DivX + DivWidth*1/4;
  float exitSymbolDivY6 = DivY + DivHeight*3/4;
  float exitSymbolDivX7 = DivX + DivWidth*3/4;
  float exitSymbolDivY8 = DivY + DivHeight*1/4;
  float exitSymbolDivX9 = DivX + DivWidth*3/4;
  float exitSymbolDivY10 = DivY + DivHeight*3/4;
  float exitSymbolDivX11 = DivX + DivWidth*1/4;
  float exitSymbolDivY12= DivY + DivHeight*3/4;
  //
  float pinSymbolDivX1 = DivX + DivWidth*1/2;
  float pinSymbolDivY2 = DivY + DivHeight*1/4;
  float pinSymbolDivX3 = DivX + DivWidth*3/8;
  float pinSymbolDivY4 = DivY + DivHeight*1/2;
  float pinSymbolDivX5 = DivX + DivWidth*5/8;
  float pinSymbolDivY6 = DivY + DivHeight*1/2;
  float pinSymbolDivX7 = DivX + DivWidth*1/4;
  float pinSymbolDivY8 = DivY + DivHeight*1/2;
  float pinSymbolDivWidth9 = DivWidth*1/2;
  float pinSymbolDivHeight10 = DivHeight*1/2;
  //
  float downloadSymbolDivX1 = DivX + DivWidth*1/2;
  float downloadSymbolDivY2 = DivY + DivHeight*3/4;
  float downloadSymbolDivX3 = DivX + DivWidth*1/4;
  float downloadSymbolDivY4 = DivY + DivHeight*1/2;
  float downloadSymbolDivX5 = DivX + DivWidth*3/4;
  float downloadSymbolDivY6 = DivY + DivHeight*1/2;
  float downloadSymbolDivX7 = DivX + DivWidth*3/8;
  float downloadSymbolDivY8 = DivY + DivHeight*0;
  float downloadSymbolDivWidth9 = DivWidth*2/8;
  float downloadSymbolDivHeight10 = DivHeight*1/2;
  float downloadSymbolDivX11 = DivX + DivWidth*3/4;
  float downloadSymbolDivY12 = DivY + DivHeight*1/4;
  float downloadSymbolDivWidth13 = DivWidth*3/4;
  float downloadSymbolDivHeight14 = DivHeight*3/4;
  //
  float heartSymbolDivX1 = DivX + DivWidth*1/4;
  float heartSymbolDivY2 = DivY + DivHeight*1/4;
  float heartSymbolDivX3 = DivX + DivWidth*1/2;
  float heartSymbolDivY4 = DivY + DivHeight*1/2;
  float heartSymbolDivX5 = DivX + DivWidth*1/4;
  float heartSymbolDivY6 = DivY + DivHeight*1/4;
  float heartSymbolDivX7 = DivX + DivWidth*0;
  float heartSymbolDivY8 = DivY + DivHeight*1/2;
  float heartSymbolDivX9 = DivX + DivWidth*0;
  float heartSymbolDivY10 = DivY + DivHeight*1/2;
  float heartSymbolDivX11 = DivX + DivWidth*1/2;
  float heartSymbolDivY12 = DivY + DivHeight*1;
  float heartSymbolDivX13 = DivX + DivWidth*1/2;
  float heartSymbolDivY14 = DivY + DivHeight*1;
  float heartSymbolDivX15 = DivX + DivWidth*1;
  float heartSymbolDivY16 = DivY + DivHeight*1/2;
  float heartSymbolDivX17 = DivX + DivWidth*1;
  float heartSymbolDivY18 = DivY + DivHeight*1/2;
  float heartSymbolDivX19 = DivX + DivWidth*3/4;
  float heartSymbolDivY20 = DivY + DivHeight*1/4;
  float heartSymbolDivX21 = DivX + DivWidth*3/4;
  float heartSymbolDivY22 = DivY + DivHeight*1/4;
  float heartSymbolDivX23 = DivX + DivWidth*1/2;
  float heartSymbolDivY24 = DivY + DivHeight*1/2;
  //
  float shuffleSymbolDivX1 = DivX + DivWidth*0;
  float shuffleSymbolDivY2 = DivY + DivHeight*1/4;
  float shuffleSymbolDivX3 = DivX + DivWidth*1/4;
  float shuffleSymbolDivY4 = DivY + DivHeight*1/4;
  float shuffleSymbolDivX5 = DivX + DivWidth*1/4;
  float shuffleSymbolDivY6 = DivY + DivHeight*1/4;
  float shuffleSymbolDivX7= DivX + DivWidth*3/4;
  float shuffleSymbolDivY8 = DivY + DivHeight*3/4;
  float shuffleSymbolDivX9 = DivX + DivWidth*0;
  float shuffleSymbolDivY10 = DivY + DivHeight*3/4;
  float shuffleSymbolDivX11 = DivX + DivWidth*1/4;
  float shuffleSymbolDivY12 = DivY + DivHeight*3/4;
  float shuffleSymbolDivX13 = DivX + DivWidth*1/4;
  float shuffleSymbolDivY14 = DivY + DivHeight*3/4;
  float shuffleSymbolDivX15 = DivX + DivWidth*3/4;
  float shuffleSymbolDivY16 = DivY + DivHeight*1/4;
  float shuffleSymbolDivX17 = DivX + DivWidth*3/4;
  float shuffleSymbolDivY18 = DivY + DivHeight*0.4;
  float shuffleSymbolDivX19 = DivX + DivWidth*7/8;
  float shuffleSymbolDivY20 = DivY + DivHeight*1/4;
  float shuffleSymbolDivX21 = DivX + DivWidth*3/4;
  float shuffleSymbolDivY22 = DivY + DivHeight*1/7.8;
  float shuffleSymbolDivX23 = DivX + DivWidth*3/4;
  float shuffleSymbolDivY24 = DivY + DivHeight*0.88;
  float shuffleSymbolDivX25 = DivX + DivWidth*7/8;
  float shuffleSymbolDivY26 = DivY + DivHeight*3/4;
  float shuffleSymbolDivX27 = DivX + DivWidth*3/4;
  float shuffleSymbolDivY28 = DivY + DivHeight*0.625;
  //
  
  //String-Vars of Folders and File Names
  String upArrow = "..";
  String dependenciesFolder = "Dependencies";
  String imagesFolder = "Images";
  String imageName = "unknownSong";
  String imageName2 = "burnSong";
  String imageName3 = "foryouSong";
  String fileExtension = ".jpg";
  String Open = "/";
  
  //Directory or Pathway to Images
  String imageDirectory = upArrow + Open + dependenciesFolder + Open + imagesFolder + Open;
  String pathway = imageDirectory + imageName + fileExtension;
  String pathway2 = imageDirectory + imageName2 + fileExtension;
  String pathway3 = imageDirectory + imageName3 + fileExtension;
  
  println(pathway);
  //Concatenation of Pathways

  //PImage Vars + Divisions (width and height)
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
  //DIVS
  int numberOfButtons = 11;
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  float imageDivX = beginningButtonSpace*7.9;
  float imageDivY = appHeight* 31.1/202;
  float imageDivWidth = appWidth*63/260 - beginningButtonSpace*0;
  float imageDivHeight = appHeight*70/202;

  float image2DivX = beginningButtonSpace*7.9;
  float image2DivY = appHeight*4.5/20;
  float image2DivWidth = appWidth*63/260 - beginningButtonSpace*0;
  float image2DivHeight = appHeight*70/202;

  float image3DivX = beginningButtonSpace*7.9;
  float image3DivY = appHeight*4.5/20;
  float image3DivWidth = appWidth*63/260 - beginningButtonSpace*0;
  float image3DivHeight = appHeight*70/202;
  //
  //rect (DivX
  rect( DivX, DivY, DivWidth, DivHeight );
  rect( DivX, DivY, DivWidth, DivHeight );
  triangle( playSymbolDivX1, playSymbolDivY2, playSymbolDivX3, playSymbolDivY4, playSymbolDivX5, playSymbolDivY6 );
  triangle( fastSymbolDivX1, fastSymbolDivY2, fastSymbolDivX3, fastSymbolDivY4, fastSymbolDivX5, fastSymbolDivY6 );
  triangle( fastSymbolDivX7, fastSymbolDivY8, fastSymbolDivX9, fastSymbolDivY10, fastSymbolDivX11, fastSymbolDivY12 );
  triangle( nextSymbolDivX1, nextSymbolDivY2, nextSymbolDivX3, nextSymbolDivY4, nextSymbolDivX5, nextSymbolDivY6 );
  rect( nextSymbolDivX7, nextSymbolDivY8, nextSymbolDivWidth9, nextSymbolDivHeight10 );
  triangle( backSymbolDivX1, backSymbolDivY2, backSymbolDivX3, backSymbolDivY4, backSymbolDivX5, backSymbolDivY6 );
  rect( backSymbolDivX7, backSymbolDivY8, backSymbolDivWidth9, backSymbolDivHeight10 );
  triangle( rewindSymbolDivX1, rewindSymbolDivY2, rewindSymbolDivX3, rewindSymbolDivY4, rewindSymbolDivX5, rewindSymbolDivY6 );
  triangle( rewindSymbolDivX7, rewindSymbolDivY8, rewindSymbolDivX9, rewindSymbolDivY10, rewindSymbolDivX11, rewindSymbolDivY12 );
  rect( pauseSymbolDivX1, pauseSymbolDivY2, pauseSymbolDivWidth3, pauseSymbolDivHeight4 );
  rect ( pauseSymbolDivX5, pauseSymbolDivY6, pauseSymbolDivWidth7, pauseSymbolDivHeight8 );
  triangle ( exitSymbolDivX1, exitSymbolDivY2, exitSymbolDivX3, exitSymbolDivY4, exitSymbolDivX5, exitSymbolDivY6 );
  triangle ( exitSymbolDivX7, exitSymbolDivY8, exitSymbolDivX9, exitSymbolDivY10, exitSymbolDivX11, exitSymbolDivY12 );
  triangle ( pinSymbolDivX1, pinSymbolDivY2, pinSymbolDivX3, pinSymbolDivY4, pinSymbolDivX5, pinSymbolDivY6 );
  rect ( pinSymbolDivX7, pinSymbolDivY8, pinSymbolDivWidth9, pinSymbolDivHeight10 );
  triangle ( downloadSymbolDivX1, downloadSymbolDivY2, downloadSymbolDivX3, downloadSymbolDivY4, downloadSymbolDivX5, downloadSymbolDivY6 );
  rect ( downloadSymbolDivX7, downloadSymbolDivY8, downloadSymbolDivWidth9, downloadSymbolDivHeight10 );
  line ( downloadSymbolDivX11, downloadSymbolDivY12, downloadSymbolDivWidth13, downloadSymbolDivHeight14 );
  line ( heartSymbolDivX1, heartSymbolDivY2, heartSymbolDivX3, heartSymbolDivY4 );
  line ( heartSymbolDivX5, heartSymbolDivY6, heartSymbolDivX7, heartSymbolDivY8 );
  line ( heartSymbolDivX9, heartSymbolDivY10, heartSymbolDivX11, heartSymbolDivY12 );
  line ( heartSymbolDivX13, heartSymbolDivY14, heartSymbolDivX15, heartSymbolDivY16 );
  line ( heartSymbolDivX17, heartSymbolDivY18, heartSymbolDivX19, heartSymbolDivY20 );
  line ( heartSymbolDivX21, heartSymbolDivY22, heartSymbolDivX23, heartSymbolDivY24 );
  line ( shuffleSymbolDivX1, shuffleSymbolDivY2, shuffleSymbolDivX3, shuffleSymbolDivY4 );
  line ( shuffleSymbolDivX5, shuffleSymbolDivY6, shuffleSymbolDivX7, shuffleSymbolDivY8 );
  line ( shuffleSymbolDivX9, shuffleSymbolDivY10, shuffleSymbolDivX11, shuffleSymbolDivY12 );
  line ( shuffleSymbolDivX13, shuffleSymbolDivY14, shuffleSymbolDivX15, shuffleSymbolDivY16 );
  triangle ( shuffleSymbolDivX17, shuffleSymbolDivY18, shuffleSymbolDivX19, shuffleSymbolDivY20, shuffleSymbolDivX21, shuffleSymbolDivY22 );
  triangle ( shuffleSymbolDivX23, shuffleSymbolDivY24, shuffleSymbolDivX25, shuffleSymbolDivY26, shuffleSymbolDivX27, shuffleSymbolDivY28 );
  //rect( songTitle
  //image(image, imageDivX, imageDivY, imageDivWidthAdjusted, imageDivHeightAdjusted);
  //image(image2, image2DivX, image2DivY, image2DivWidthAdjusted, image2DivHeightAdjusted);
  //image(image3, image3DivX, image3DivY, image3DivWidthAdjusted, image3DivHeightAdjusted);
  image(image, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  image(image2, image2DivX, image2DivY, image2DivWidth, image2DivHeight);
  image(image3, image3DivX, image3DivY, image3DivWidth, image3DivHeight);
  //
  //
  //Images and aspect ratio algorithm
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
  //
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  rect(image2DivX, image2DivY, image2DivWidth, image2DivHeight);
  rect(image3DivX, image3DivY, image3DivWidth, image3DivHeight);
  //image();
  image(image, imageDivX, imageDivY, imageDivWidthAdjusted, imageDivHeightAdjusted);
  image(image2, image2DivX, image2DivY, image2DivWidthAdjusted, image2DivHeightAdjusted);
  image(image3, image3DivX, image3DivY, image3DivWidthAdjusted, image3DivHeightAdjusted);
  image(image, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  image(image2, image2DivX, image2DivY, image2DivWidth, image2DivHeight);
  image(image3, image3DivX, image3DivY, image3DivWidth, image3DivHeight);

/* TEXT IMAGES add and check pls

  //rect( DivX, DivY, DivWidth, DivHeight );
  rect(TQuitX, TQuitY, TQuitWidth, TQuitHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(songName2DIV_X, songName2DIV_Y, songName2DIV_Width, songName2DIV_Height);
  rect(songTex3DIVX, songTex3DIVY, songTex3DIVWidth, songTex3DIVHeight);
 
  //
  //Drawing Text - Formatting Text Functions
color redInk = #A53F52; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //GreyScale is 255
color resetInk = whiteInk;
fill(redInk); //Ink, hexidecimal copied from Color Selector
//Grayscale 0-255
textAlign (CENTER, TOP); 

  //
  //Drawing Text 0 Font Size Adjustment (WHILE Loop)
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
  //Draw Text with adjusted DIV Variables
  int numberOfButtons = 11;
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  float imageDivX = beginningButtonSpace*7.9;
  float imageDivY = appHeight* 31.1/202;
  float imageDivWidth = appWidth*63/260 - beginningButtonSpace*0;
  float imageDivHeight = appHeight*70/202;

  float image2DivX = beginningButtonSpace*7.9;
  float image2DivY = appHeight*4.5/20;
  float image2DivWidth = appWidth*63/260 - beginningButtonSpace*0;
  float image2DivHeight = appHeight*70/202;

  float image3DivX = beginningButtonSpace*7.9;
  float image3DivY = appHeight*4.5/20;
  float image3DivWidth = appWidth*63/260 - beginningButtonSpace*0;
  float image3DivHeight = appHeight*70/202;
  //
  //Strings
String title = "Burn";
String name = "Unknown";
String text = "For you";
String quit = "X";

//IMAGES
  //Images & Aspect Ratio Algoritrhm, including WHILE Loop
image(image, imageDivX, imageDivY, imageDivWidthAdjusted, imageDivHeightAdjusted);
image(image2, image2DivX, image2DivY, image2DivWidthAdjusted, image2DivHeightAdjusted);
image(image3, image3DivX, image3DivY, image3DivWidthAdjusted, image3DivHeightAdjusted);
image(image, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
image(image2, image2DivX, image2DivY, image2DivWidth, image2DivHeight);
image(image3, image3DivX, image3DivY, image3DivWidth, image3DivHeight);

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

  //Aspect Ratio for Constantia-Italic
  float fontSizeConstantia = 10; //Default fontSize for 100%
  float divHeightConstantia = songTitleDivHeight;
  float constantiaAspectRatio = fontSizeConstantia / divHeightConstantia; //#<1
  float textAdjustment = 7;
  fontSize = songTitleDivHeight*constantiaAspectRatio * textAdjustment;
  fontSize2 = songName2DIV_Height*constantiaAspectRatio * textAdjustment;
  fontSize3 = songTex3DIVHeight*constantiaAspectRatio * textAdjustment;

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
  
  //
  //Image DIVS
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
rect(image2DivX, image2DivY, image2DivWidth, image2DivHeight);
rect(image3DivX, image3DivY, image3DivWidth, image3DivHeight);

//
//Image Aspect Ratio Algorithm  
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

//
//Pathway string, PI
String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName = "unknownSong";
String imageName2 = "burnSong";
String imageName3 = "foryouSong";
String fileExtension = ".jpg";
String Open = "/";
//
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
  */
}
//
void draw() {
  //Music Symbol Changes: hoverover, activation. Boolean from MousePressed
}//End Draw
//
void mousePressed () {
  //Music Symbol Changes: Boolean to draw()
} //End
//
void keyPressed() {
} //End
//
// End MAIN Program
/* DIVs 2D Rectangles
//

//

//

//
//

/* Aspect Ratio

//
//Display
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

- See Absolute Pathway: C:\Users\e.padilla\Documents\GitHub\Music-yummy.github.io\Dependencies\Images
 
 //DELETE here prob
 - See Relative Pathway: Dependencies\Images

String imageDirectory = upArrow + Open + upArrow + Open + dependenciesFolder + Open + imagesFolder + Open;
String pathway = imageDirectory + imageName + fileExtension;
String pathway2 = imageDirectory + imageName2 + fileExtension;
String pathway3 = imageDirectory + imageName3 + fileExtension;
print(pathway);
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
// Text, Simple ... Hardcoded

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
//Music Static
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

- See Absolute Pathway: C:\Users\e.padilla\Documents\GitHub\Music-yummy.github.io\Dependencies\Music
 
 - See Relative Pathway: Dependencies\Music
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

  println("Music Pathway", musicDirectory);
   println("Full Music File Pathway", file);

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

void setup() {

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
}
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
// Note: double tap is automatic rewind, no pause
 Symbol is two triangles
 This changes what the button might become after it is pressed

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
*/
