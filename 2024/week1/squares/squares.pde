/* 

 An experiment with circles placed on a grid but with random perturbations to their position, radius.
 Fill and background are both white, stroke is black.

Principles: repetition, randomness, subdivision.  See [Fundamental Elements Of Generative Art (Eugen Lindwurm)](https://towardsdatascience.com/fundamental-elements-of-generative-art-11175f4741e5)
 
*/

import processing.svg.*;
// import controlP5.*;
import java.util.*;

int window_width = 800;
int window_height = 800;
int margin = 40;

void setup() {
  size(800, 800);
  
  String titlePrefix = "exports/export_"+timestamp();
  beginRecord(SVG, titlePrefix+".svg");
  
  background(255);
  
 // Parameters
  int N = 400;
  float k;
  float k0 = 0.4;
  float x = width/2;
  float y = height/2;
  float duMax = 150;
  float duMin = 10;
  float du = (duMax + duMin)/2;
  float ds = 16;

  
   fill(255);
   stroke(0);
   
   rect(margin - 0.01, margin - 0.01 , 800 - 2*margin + 0.01, 800 - 2*margin + 0.01);
   
   clip(margin, margin, 800 - 2*margin, 800 - 2*margin);
   
 
  
  
  for (int i = 0; i < N; i++) {

      // Draw inscribed rectangles, beginning with
      // a square at (x,y) with (width, height) = (du, du)
      // The number k0 is the contraction factor.
      // The number of inset squares is given by 
      // irandom(0,3));

      // Do random walk motion on du, the length scale
      // for random walk in (x,y)
      du = du + ds*randomGaussian();
      if (du < duMin) { du = duMax; };
      if (du > duMax) { du = duMin; };

      // Random walk in (x,y)
      x = x + du*randomGaussian();
      y = y + du*randomGaussian();

      // wrap around if need be
      if (x < 0) { x = width; };
      if (y < 0) { y = height; };
      if (x > width) { x = 0; };
      if (y > height) { y = 0; };
     
   
  }
  
    endRecord();
    save(titlePrefix+".png");
  

}

void draw() {
  // Drawing code goes here
}

  // Exit the sketch after saving the file
void keyPressed() {
  exit(); // Exit the sketch
}

// --------------------------------------------------
// Function borrowed from generative gestaltung sketches
// http://www.generative-gestaltung.de
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
