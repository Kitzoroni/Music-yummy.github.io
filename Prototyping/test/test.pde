println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population using unitless ratios (i.e. millimeters to pixels)
float DivX = appWidth * 1/4;
float DivY = appHeight * 1/4;
float DivWidth = appWidth * 1/2;
float DivHeight = appHeight * 1/2;
//
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


//rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX, DivY, DivWidth, DivHeight );
//triangle( playSymbolDivX1, playSymbolDivY2, playSymbolDivX3, playSymbolDivY4, playSymbolDivX5, playSymbolDivY6 );
//triangle( fastSymbolDivX1, fastSymbolDivY2, fastSymbolDivX3, fastSymbolDivY4, fastSymbolDivX5, fastSymbolDivY6 );
//triangle( fastSymbolDivX7, fastSymbolDivY8, fastSymbolDivX9, fastSymbolDivY10, fastSymbolDivX11, fastSymbolDivY12 );
//triangle( nextSymbolDivX1, nextSymbolDivY2, nextSymbolDivX3, nextSymbolDivY4, nextSymbolDivX5, nextSymbolDivY6 );
//rect( nextSymbolDivX7, nextSymbolDivY8, nextSymbolDivWidth9, nextSymbolDivHeight10 );
//triangle( backSymbolDivX1, backSymbolDivY2, backSymbolDivX3, backSymbolDivY4, backSymbolDivX5, backSymbolDivY6 );
//rect( backSymbolDivX7, backSymbolDivY8, backSymbolDivWidth9, backSymbolDivHeight10 );
//triangle( rewindSymbolDivX1, rewindSymbolDivY2, rewindSymbolDivX3, rewindSymbolDivY4, rewindSymbolDivX5, rewindSymbolDivY6 );
//triangle( rewindSymbolDivX7, rewindSymbolDivY8, rewindSymbolDivX9, rewindSymbolDivY10, rewindSymbolDivX11, rewindSymbolDivY12 );
//rect( pauseSymbolDivX1, pauseSymbolDivY2, pauseSymbolDivWidth3, pauseSymbolDivHeight4 );
//rect ( pauseSymbolDivX5, pauseSymbolDivY6, pauseSymbolDivWidth7, pauseSymbolDivHeight8 );
//triangle ( exitSymbolDivX1, exitSymbolDivY2, exitSymbolDivX3, exitSymbolDivY4, exitSymbolDivX5, exitSymbolDivY6 );
//triangle ( exitSymbolDivX7, exitSymbolDivY8, exitSymbolDivX9, exitSymbolDivY10, exitSymbolDivX11, exitSymbolDivY12 );
//triangle ( pinSymbolDivX1, pinSymbolDivY2, pinSymbolDivX3, pinSymbolDivY4, pinSymbolDivX5, pinSymbolDivY6 );
//rect ( pinSymbolDivX7, pinSymbolDivY8, pinSymbolDivWidth9, pinSymbolDivHeight10 );
triangle ( downloadSymbolDivX1, downloadSymbolDivY2, downloadSymbolDivX3, downloadSymbolDivY4, downloadSymbolDivX5, downloadSymbolDivY6 );
rect ( downloadSymbolDivX7, downloadSymbolDivY8, downloadSymbolDivWidth9, downloadSymbolDivHeight10 );
line ( downloadSymbolDivX11, downloadSymbolDivY12, downloadSymbolDivWidth13, downloadSymbolDivHeight14 );
