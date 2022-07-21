//Global Variables
float xButton1, yButton1, button1Width, button1Height;
float xButton2, yButton2, button2Width, button2Height;
float xRectDisplay, yRectDisplay, rectDisplayWidth, rectDisplayHeight;
float xEllipseDisplay, yEllipseDisplay, xdiameterEllipseDisplay, ydiameterEllipseDisplay;
color purple = #D180DE, buttonFill = #D0CCD1, defaultFill = #FFFFFF;
boolean rectON=false, ellipseON=false;
//
String button1Text= "Click Me";
//String button2Text= "Or Me";
PFont buttonFont;
//
void setup () {
  //CANVAS
  size (900, 600); //Landscape
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if (width > displayWidth || height > displayHeight) {//CANVAS in Display Checker
    //CANVAS Too Big
    appWidth =displayWidth;
    appHeight = displayHeight;
    println ("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls = "Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru turn your phun";
  String orientation = ( appWidth>=appHeight) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populated a variable
  println( DO, orientation );
  if ( orientation==ls ) {//Test for chosen display orientation
    println("Good to go");
  } else {
    appWidth *=0; //assignment operator, words like appWidth=appWidth*0
    appHeight *=0;
    println(instruct);
  }
  //
  //Population
  int centerX = appWidth/2;
  int centerY = appHeight/2;
  //
  xButton1 = appWidth*1/5;
  yButton1 = appHeight*1/3;
  button1Width = appWidth*1/4; 
  button1Height = appHeight*1/5;
  //
  //xButton2 = appWidth*3/5;
  //yButton2 = appHeight*1/3; 
  //button2Width = appWidth*1/4; 
  //button2Height = appHeight*1/5;
  //
  xRectDisplay = appWidth*1/2;
  yRectDisplay = appHeight*3/4;
  rectDisplayWidth = button1Width; 
  rectDisplayHeight = button1Height;
  //
  xEllipseDisplay = appWidth*3/5;
  yEllipseDisplay = appHeight*1/4;
  xdiameterEllipseDisplay = appWidth*1/5; 
  ydiameterEllipseDisplay = appHeight*1/10;
  //
  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Verdana", 15); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
}//End setup
//
void draw () {
  background(purple);
  fill (buttonFill);
  rect(xButton1, yButton1, button1Width, button1Height);
  //rect (xButton2, yButton2, button2Width, button2Height);

  fill (defaultFill);
  if ( rectON==true ) rect (xRectDisplay, yRectDisplay, rectDisplayWidth, rectDisplayHeight);//1
  if ( ellipseON==true) ellipse (xEllipseDisplay, yEllipseDisplay, xdiameterEllipseDisplay, ydiameterEllipseDisplay);//2
  //
  //Text Draw, General Code for Any Text
  //Note: visualization rectangle is in the main program
  fill (0, 0, 0);//Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Alight X&Y, see Processing.org/Reference
  textFont (buttonFont, 48);
  //
  //Specific Test per Button
  text (button1Text, xButton1, yButton1, button1Width, button1Height);
  //text (button2Text, xButton2, yButton2, button2Width, button2Height);
  fill(buttonFill);//Will change the fill() on all shapes the second time repeated in draw
}//End draw
//
void keyPressed () {
}//End keyPressed
//
void mousePressed () {
  //rectON=false;
  //ellipseON=false;
  if ( mouseX>=xButton1 && mouseX<=xButton1+button1Width && mouseY>=yButton1 && mouseY<=yButton1+button1Height ) { 
    if ( rectON==false ) {
      rectON=true;
      ellipseON=false;
    } else {
      rectON=false;
      ellipseON=true;
    }
  }//End Button1

  //if ( mouseX>=xButton2 && mouseX<=xButton2+button2Width && mouseY>=yButton2 && mouseY<=yButton2+button2Height ) ellipseON=true;
}//End mousePressed
//
//End MAIN Program
