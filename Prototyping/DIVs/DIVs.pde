/* DIVs 2D Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

//
int paperWidth = 260;
int paperHeight = 202;
float songImageDivX = appWidth * 187 / paperWidth;
float songImageDivY = appHeight *  28 / paperHeight;
float songImageDivWidth = appWidth * 56 / paperWidth;
float songImageDivHeight = appHeight * 60 / paperHeight;
//
float songLyricsDivX = appWidth * 117 / paperWidth;
float songLyricsDivY = appHeight *  31 / paperHeight;
float songLyricsDivWidth = appWidth * 49 / paperWidth;
float songLyricsDivHeight = appHeight * 149 / paperHeight;
//
float songScrollDivX = appWidth * 96 / paperWidth;
float songScrollDivY = appHeight *  31 / paperHeight;
float songScrollDivWidth = appWidth * 7 / paperWidth;
float songScrollDivHeight = appHeight * 160 / paperHeight;
//
float songPinDivX = appWidth * 81 / paperWidth;
float songPinDivY = appHeight *  26 / paperHeight;
float songPinDivWidth = appWidth * 7 / paperWidth;
float songPinDivHeight = appHeight * 6 / paperHeight;
//
float lyricsExitDivX = appWidth * 166.5 / paperWidth;
float lyricsExitDivY = appHeight *  24.5 / paperHeight;
float lyricsExitDivWidth = appWidth * 7 / paperWidth;
float lyricsExitDivHeight = appHeight * 6 / paperHeight;
//
float songVolume1DivX = appWidth * 257 / paperWidth;
float songVolume1DivY = appHeight *  127.5 / paperHeight;
float songVolume1DivWidth = appWidth * 7 / paperWidth;
float songVolume1DivHeight = appHeight * 6 / paperHeight;
//
float songVolume2DivX = appWidth * 257 / paperWidth;
float songVolume2DivY = appHeight * 185 / paperHeight;
float songVolume2DivWidth = appWidth * 7 / paperWidth;
float songVolume2DivHeight = appHeight * 6 / paperHeight;
//
float songVolumeDivX = appWidth * 243.5 / paperWidth;
float songVolumeDivY = appHeight * 139 / paperHeight;
float songVolumeDivWidth = appWidth * 7 / paperWidth;
float songVolumeDivHeight = appHeight * 41 / paperHeight;
//
float songPaw1DivX = appWidth * 187 / paperWidth;
float songPaw1DivY = appHeight * 115.5 / paperHeight;
float songPaw1DivWidth = appWidth * 28 / paperWidth;
float songPaw1DivHeight = appHeight * 24 / paperHeight;
//
float songPaw2DivX = appWidth * 229 / paperWidth;
float songPaw2DivY = appHeight * 115.5 / paperHeight;
float songPaw2DivWidth = appWidth * 28 / paperWidth;
float songPaw2DivHeight = appHeight * 24 / paperHeight;
//
float songFastDivX = appWidth * 229 / paperWidth;
float songFastDivY = appHeight * 113.5 / paperHeight;
float songFastDivWidth = appWidth * 12 / paperWidth;
float songFastDivHeight = appHeight * 14 / paperHeight;
//
float songRewindDivX = appWidth * 187 / paperWidth;
float songRewindDivY = appHeight * 113.5 / paperHeight;
float songRewindDivWidth = appWidth * 12 / paperWidth;
float songRewindDivHeight = appHeight * 14 / paperHeight;
//
float songPauseDivX = appWidth * 208 / paperWidth;
float songPauseDivY = appHeight * 109.3 / paperHeight;
float songPauseDivWidth = appWidth * 12 / paperWidth;
float songPauseDivHeight = appHeight * 14 / paperHeight;
//
float songPlayDivX = appWidth * 208 / paperWidth;
float songPlayDivY = appHeight * 109.3 / paperHeight;
float songPlayDivWidth = appWidth * 12 / paperWidth;
float songPlayDivHeight = appHeight * 14 / paperHeight;
//
float songLoopDivX = appWidth * 208 / paperWidth;
float songLoopDivY = appHeight * 126 / paperHeight;
float songLoopDivWidth = appWidth * 12 / paperWidth;
float songLoopDivHeight = appHeight * 14 / paperHeight;
//
float songEar1DivX = appWidth * 187 / paperWidth;
float songEar1DivY = appHeight * 12 / paperHeight;
float songEar1DivWidth = appWidth * 14 / paperWidth;
float songEar1DivHeight = appHeight * 16 / paperHeight;
//
float songEar2DivX = appWidth * 229 / paperWidth;
float songEar2DivY = appHeight * 12 / paperHeight;
float songEar2DivWidth = appWidth * 14 / paperWidth;
float songEar2DivHeight = appHeight * 16 / paperHeight;
//
float songNextDivX = appWidth * 237 / paperWidth;
float songNextDivY = appHeight * 48 / paperHeight;
float songNextDivWidth = appWidth * 12 / paperWidth;
float songNextDivHeight = appHeight * 14 / paperHeight;
//
float songBackDivX = appWidth * 173 / paperWidth;
float songBackDivY = appHeight * 48 / paperHeight;
float songBackDivWidth = appWidth * 12 / paperWidth;
float songBackDivHeight = appHeight * 14 / paperHeight;
//
float songShuffleDivX = appWidth * 208 / paperWidth;
float songShuffleDivY = appHeight * 152.5 / paperHeight;
float songShuffleDivWidth = appWidth * 12 / paperWidth;
float songShuffleDivHeight = appHeight * 14 / paperHeight;
//
float songBarDivX = appWidth * 180 / paperWidth;
float songBarDivY = appHeight * 108 / paperHeight;
float songBarDivWidth = appWidth * 58 / paperWidth;
float songBarDivHeight = appHeight * 0.4 / paperHeight;
//
float songSongsDivX = appWidth * 0 / paperWidth;
float songSongsDivY = appHeight * 0 / paperHeight;
float songSongsDivWidth = appWidth *  89 / paperWidth;
float songSongsDivHeight = appHeight * 202 / paperHeight;

//rect( DivX, DivY, DivWidth, DivHeight );
rect( songImageDivX, songImageDivY, songImageDivWidth, songImageDivHeight );
rect( songLyricsDivX, songLyricsDivY, songLyricsDivWidth, songLyricsDivHeight );
rect( songScrollDivX, songScrollDivY, songScrollDivWidth, songScrollDivHeight );
rect( songPinDivX, songPinDivY, songPinDivWidth, songPinDivHeight );
rect( songEar1DivX, songEar1DivY, songEar1DivWidth, songEar1DivHeight );
rect( songEar2DivX, songEar2DivY, songEar2DivWidth, songEar2DivHeight );
rect( lyricsExitDivX, lyricsExitDivY, lyricsExitDivWidth, lyricsExitDivHeight );
rect( songVolume1DivX, songVolume1DivY, songVolume1DivWidth, songVolume1DivHeight );
rect( songVolume2DivX, songVolume2DivY, songVolume2DivWidth, songVolume2DivHeight );
rect( songVolumeDivX, songVolumeDivY, songVolumeDivWidth, songVolumeDivHeight );
rect( songPaw1DivX, songPaw1DivY, songPaw1DivWidth, songPaw1DivHeight );
rect( songPaw2DivX, songPaw2DivY, songPaw2DivWidth, songPaw2DivHeight );
rect( songFastDivX, songFastDivY, songFastDivWidth, songFastDivHeight );
rect( songRewindDivX, songRewindDivY, songRewindDivWidth, songRewindDivHeight );
rect( songPauseDivX, songPauseDivY, songPauseDivWidth, songPauseDivHeight );
rect( songPlayDivX, songPlayDivY, songPlayDivWidth, songPlayDivHeight );
rect( songLoopDivX, songLoopDivY, songLoopDivWidth, songLoopDivHeight );
rect( songNextDivX, songNextDivY, songNextDivWidth, songNextDivHeight );
rect( songBackDivX, songBackDivY, songBackDivWidth, songBackDivHeight );
rect( songPlayDivX, songPlayDivY, songPlayDivWidth, songPlayDivHeight );
rect( songShuffleDivX, songShuffleDivY, songShuffleDivWidth, songShuffleDivHeight );
rect( songBarDivX, songBarDivY, songBarDivWidth, songBarDivHeight );
rect( songSongsDivX, songSongsDivY, songSongsDivWidth, songSongsDivHeight );
