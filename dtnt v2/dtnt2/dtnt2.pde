//Global Variables
float but1X, but1Y, but1Width, but1Height, but2X, but2Y, but2Width, but2Height;
float rectX, rectY, rectWidth, rectHeight, elX, elY, elWidth, elHeight;
color black=#000000, resetWhite=#FFFFFF; //Night Mode Friendly
Boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
String buttonText2= "Or Me";
PFont buttonFont;
color purple = #2C08FF, white=#FFFFFF; 
//
void setup() {
  //Display Geometry
  size(600, 400); //Landscape
  println(width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS TOo BIG!
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation);
  if ( orientation == ls ) { //Test for chosen display orientation
    println("Good to Go!");
  } else {
    appWidth *= 0; //assignment operater, works like appWidth = appWidth*0
    appHeight *= 0;
  };
  //
  //Population using appWidth and appHeight
  //
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //
  but1X = centerX - appWidth*1/4;
  but1Y = centerY + appHeight*1/4;
  but1Width = appWidth*1/4;
  but1Height = appHeight*1/4;
  but2X = centerX + appWidth*1/6;
  but2Y = but1Y;
  but2Width = but1Width; 
  but2Height = but1Height;
  rectX = but1X;
  rectY = centerY - appHeight*1/4;
  rectWidth = but1Width;
  rectHeight = but1Height;
  elX = but2X;
  elY = rectY;
  elWidth = appWidth*1/5;
  elHeight = appHeight*1/6;
  //
  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
}; //End Setup
//
void draw() {
  background( black );
  rect( but1X, but1Y, but1Width, but1Height );
  rect( but2X, but2Y, but2Width, but2Height );
  if ( rectON==true ) rect( rectX, rectY, rectWidth, rectHeight); //Button 1
  if ( ellipseON==true ) ellipse( elX, elY, elWidth, elHeight); //Button 2
  //
  //Text Draw, General Code for any text
  //Note: visualization rectagngle is in main program
  fill(purple); //Ink, hexidecimal copied form Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [Left |CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text(buttonText1, but1X, but1Y, but1Width, but1Height);
  fill(white); //Will change the fill() on all shapes the second time repeated in draw()
  //
}; //End Draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //rectON=false;
  //ellipseON=false;
  if ( mouseX>=but1X && mouseX<=but1X + but1Width && mouseY>= but1Y && mouseY<=but1Y+but1Height ) {
    if ( rectON==true) {
      rectON=false;
      ellipseON=true;
    } else {
      rectON=true;
      ellipseON=false;
    }
  }//End Button1
  //if ( mouseX>=but2X && mouseX<=but2X + but2Width && mouseY>= but2Y && mouseY<=but2Y+but2Height  ) ellipseON=true;
}//End mousePressed  
//  
//End MAIN Program 
