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

//
println(pathway);
PImage image1 = loadImage( pathway );
//
image(image1, 0, 0);
