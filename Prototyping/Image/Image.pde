/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String upArrow = "../../";
String dependenciesFolder = "Dependencies/";
String imagesFolder = "Images/";
String imageName = "unknownSong";
String fileExtension = ".jpg";
String open = "/";
//
//Concatenation
/*
- See Absolute Pathway: C:\Users\e.padilla\Downloads\Dependencies\Images 
 - See Relative Pathway: Dependencies/Images
 */
String pathway = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open + imageName + fileExtension;
//
println(pathway);
PImage image1 = loadImage( pathway );
image(image1);
