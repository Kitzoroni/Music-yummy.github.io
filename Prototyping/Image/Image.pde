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
String imageName2 = "burnSong";
String imageName3 = "foryouSong";
String fileExtension = ".jpg";
String open = "/";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: Dependencies\Images
/*
- See Absolute Pathway: C:\Users\marig\OneDrive\Documents\GitHub\Music-yummy.github.io\Dependencies\Images

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
int image2Width = 500;
int image2Height = 500;
//int image3Width = 640;
//int image3Height = 640;
//
//Population: DIVs
int numberOfButtons = 11;
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
//float imageDivX = beginningButtonSpace;  
//float imageDivY = appHeight* 4.5/20;  
//float imageDivWidth = appWidth*1/2 - beginningButtonSpace*2.82;
//float imageDivHeight = appHeight*1/2.73;
//
float image2DivX = beginningButtonSpace;  
float image2DivY = appHeight*4.5/20;  
float image2DivWidth = appWidth*2/5 - beginningButtonSpace*1;
float image2DivHeight = appHeight*1/2.73;



//Image: Aspect Ratio Algorithm
println( float(imageWidth)/ float (imageHeight) );
//Ternary Operator for Aspect Ratio
//float imageAspectRatio_GreatOne = ( imageWidth > imageHeight ) ?  float(imageWidth) / float(imageHeight) : float(imageHeight) ;
//println(imageAspectRatio_GreatOne);
//float imageDivWidthAdjusted = imageDivWidth;
//float imageDivHeightAdjusted = ( imageWidth >= imageDivWidth ) ? imageDivWidthAdjusted * imageAspectRatio_GreatOne : imageDivWidthAdjusted / imageAspectRatio_GreatOne ;

float image2AspectRatio_GreatOne = ( image2Width > image2Height ) ?  float(image2Width) / float(image2Height) : float(image2Height) ;
println(image2AspectRatio_GreatOne);
float image2DivWidthAdjusted = image2DivWidth;
float image2DivHeightAdjusted = ( image2Width >= image2DivWidth ) ? image2DivWidthAdjusted * image2AspectRatio_GreatOne : image2DivWidthAdjusted / image2AspectRatio_GreatOne ;
//Div: Image
//rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
rect(image2DivX, image2DivY, image2DivWidth, image2DivHeight);
//
//image(image, imageDivX, imageDivY, imageDivWidthAdjusted, imageDivHeightAdjusted);
image(image2, image2DivX, image2DivY, image2DivWidthAdjusted, image2DivHeightAdjusted);
//image(image3, 0, 0);
//image(image, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
image(image2, image2DivX, image2DivY, image2DivWidth, image2DivHeight);
