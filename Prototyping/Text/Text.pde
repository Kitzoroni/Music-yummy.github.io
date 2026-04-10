/* Text, Simple ... Hardcoded
/* Aspect Ratio
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images

//Population: DIVs
int numberOfButtons = 11;
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float imageDivX = beginningButtonSpace;
float imageDivY = appHeight* 31.1/202;
float imageDivWidth = appWidth*63/260 - beginningButtonSpace*0;
float imageDivHeight = appHeight*70/202;

//Div: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDivY, messageDIV_Width, messageDIV_Height);
//
//Strings, text, Literal
//Fonts from OS
//Aspect Ratio for Harrington
//Drawing Text
