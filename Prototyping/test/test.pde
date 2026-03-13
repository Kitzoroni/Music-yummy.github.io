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
float stopSymbolDivX = DivX + DivWidth*1/4;
float stopSymbolDivY = DivY +  DivHeight*1/4;
float stopSymbolDivWidth = DivWidth*1/2;
float stopSymbolivHeight = DivHeight*1/2;
//
float playSymbolDivX1 = DivX + DivWidth*1/4;
float playSymbolDivY2 = DivY +  DivHeight*1/4;
float playSymbolDivX3 = DivX + DivWidth*3/4;
float playSymbolDivY4 = DivY +  DivHeight*1/2;
float playSymbolDivX5 = DivX + DivWidth*1/4;
float playSymbolDivY6 = DivY +  DivHeight*3/4;
//
float backSymbolDivX1 = DivX + DivWidth*1/4;
float backSymbolDivY2 = DivY + DivHeight*1/4;
float backSymbolWidth3 = DivX + DivWidth*3/8;
float backSymbolHeight4 = DivY + DivHeight*1/4;
float backSymbolX5 = DivX + DivWidth*1/4;
float backSymbolY6 = DivY + DivHeight*3/4;
float backSymbolX7 = DivX + DivWidth*3/8;
float backSymbolY8 = DivY + DivHeight*3/4;
float backSymbolX9 = DivX + DivWidth*2/4;
float backSymbolY10 = DivY + DivHeight*1/2;
float backSymbolX11 = DivX + DivWidth*5/8;
float backSymbolY12 = DivY + DivHeight*1/4;
float backSymbolX13 = DivX + DivWidth*5/8;
float backSymbolY14 = DivY + DivHeight*3/4;
//
float fastSymbolDivX1 = DivX + DivWidth*1/4;
float fastSymbolDivY2 = DivY + DivHeight*1/4;
float fastSymbolDivX3 = DivX + DivWidth*1/4;
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
float nextSymbolDivX1 = DivX + DivWidth*1/4;
float nextSymbolDivY2 = DivY + DivHeight*1/4;
float nextSymbolDivX3 = DivX + DivWidth*2/4;
float nextSymbolDivY4 = DivY + DivHeight*1/2;
float nextSymbolDivX5 = DivX + DivWidth*1/4;
float nextSymbolDivY6 = DivY + DivHeight*3/4; 
float nextSymbolDivX7 = DivX + DivWidth*1/2;
float nextSymbolDivY8 =  DivY + DivHeight*1/4;
float nextSymbolDivWidth9 = DivWidth*5/8;
float nextSymbolDivHeight10 = DivHeight*1/2;

//DIVsrect( DivX, DivY, DivWidth, DivHeight );
//rect( DivX, DivY, DivWidth, DivHeight );
//rect( stopSymbolDivX, stopSymbolDivY, stopSymbolDivWidth, stopSymbolivHeight );
//triangle( playSymbolDivX1, playSymbolDivY2, playSymbolDivX3, playSymbolDivY4, playSymbolDivX5, playSymbolDivY6 );
//rect( backSymbolDivX1, backSymbolDivY2, backSymbolWidth3, backSymbolHeight4, backSymbolX5 );
//triangle( backSymbolY6, backSymbolX7, backSymbolY8, backSymbolX9, backSymbolY10, backSymbolX11, backSymbolY12, backSymbolX13, backSymbolY14 );
//triangle( fastSymbolDivX1, fastSymbolDivY2, fastSymbolDivX3, fastSymbolDivY4, fastSymbolDivX5, fastSymbolDivY6 );
//triangle( fastSymbolDivX7, fastSymbolDivY8, fastSymbolDivX9, fastSymbolDivY10, fastSymbolDivX11, fastSymbolDivY12 );
triangle( nextSymbolDivX1, nextSymbolDivY2, nextSymbolDivX3, nextSymbolDivY4, nextSymbolDivX5, nextSymbolDivY6 );
rect( nextSymbolDivX7, nextSymbolDivY8, nextSymbolDivWidth9, nextSymbolDivHeight10 );
