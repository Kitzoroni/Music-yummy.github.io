/* Aspect Ratio
*/
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName = "unknownSong";
String imageName2 = "catserenadeSong";
String imageName3 = "foryouSong";
String fileExtension = ".jpg";
String open = "/";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images
/*
- See Absolute Pathway: C:\Users\e.padilla\Documents\GitHub\Music-yummy.github.io\Dependencies\Images

 - See Relative Pathway: Dependencies\Images
 */
String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
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
//
//Population: DIVs
int numberOfButtons = 11;
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float imageDivX = beginningButtonSpace;  
float imageDivY = appHeight*4.5/20;  
float imageDivWidth = appWidth*1/2 - beginningButtonSpace*0.5;
float imageDivHeight = appHeight*1/5;


//Image: Aspect Ratio Algorithm
println( float(imageWidth)/ float (imageHeight) );
//Ternary Operator for Aspect Ratio
float imageAspectRatio_GreatOne = ( imageWidth > imageHeight ) ?  float(imageWidth) / float(imageHeight) : float(imageHeight) ;
println(imageAspectRatio_GreatOne);
float imageDivWidthAdjusted = imageDivWidth;
float imageDivHeightAdjusted = ( imageWidth >= imageDivWidth ) ? imageDivWidthAdjusted * imageAspectRatio_GreatOne : imageDivWidthAdjusted / imageAspectRatio_GreatOne ;

//Div: Image
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image(image, imageDivX, imageDivY, imageDivWidthAdjusted, imageDivHeightAdjusted);
//image(image2, 0, 0);
//image(image3, 0, 0);
//image(image, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
