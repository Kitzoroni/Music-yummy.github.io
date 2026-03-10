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
float nextSymbolDivX = DivX + DivWidth*
float nextSymbolDivY = DivY + DivHeight*
float nextSymbolWidth = DivX + DivWidth*
float nextSymbolHeight = DivY + DivHeight*
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

//DIVs
//rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX, DivY, DivWidth, DivHeight );
//
rect( stopSymbolDivX, stopSymbolDivY, stopSymbolDivWidth, stopSymbolivHeight );
triangle( playSymbolDivX1, playSymbolDivY2, playSymbolDivX3, playSymbolDivY4, playSymbolDivX5, playSymbolDivY6 );
rect( backSymbolDivX1, backSymbolDivY2, backSymbolWidth3, backSymbolHeight4, backSymbolX5, backSymbolX5, backSymbolX5 );
triangle( backSymbolY6, backSymbolX7, backSymbolY8, backSymbolX9, backSymbolX9, backSymbolY10, backSymbolX11, backSymbolY12, backSymbolX13, backSymbolY14 );
