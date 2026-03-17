/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String upArrow = "..";
String dependenciesFolder = "Dependencies/";
String imagesFolder = "Images/";
String imageName = "unknownSong";
String imageName2 = "";
String imageName3 = "";
String fileExtension = ".jpg";
String open = "/";
//
//Concatenation
/*
- See Absolute Pathway: C:\Users\e.padilla\Downloads\Dependencies\Images 
 - See Relative Pathway: Dependencies\Images
 */
String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String pathway = imageDirectory + imageName + fileExtension;
String pathway2 = imageDirectory + imageName + fileExtension;
String pathway3 = imageDirectory + imageName + fileExtension;
//println(pathway);
//
PImage image, image2, image3;
image = loadImage( pathway );
image2 = loadImage( pathway2 );
image3 = loadImage( pathway3 );
//
image(image, 0, 0);
image(image2, 0, 0);
image(image3, 0, 0);
