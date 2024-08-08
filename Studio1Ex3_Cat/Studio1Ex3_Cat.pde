PImage backgroundImage;
//

void setup()
{
  size(100,100);
  //backgroundImage = loadImage("cute-cat.jpg");
    //size( backgroundImage.width, backgroundImage.height );
  
//size( loadImage("cute-cat.jpg").width, loadImage("cute-cat.jpg").height );

  backgroundImage = loadImage("cute-cat.jpg");
  //size( backgroundImage.width, backgroundImage.height );
  size( 1024, 768 );
  
}

void draw()
{
  //image(backgroundImage, 0, 0);
 float distance;
 float x = 0;
 float y = 0;
 float diameter = 0;
 color c;
 final int NUM_DOTS = 10;
 

 // IF mousePressed is true THEN
 if (mousePressed == true)
 {
   // Calculate and store the distance between the previous and current mouse position.
   // https://processing.org/reference/dist_.html
   distance = dist(pmouseX, pmouseY, mouseX, mouseY);
   
   // FOR each dot to draw
     for (int i = 0; i < NUM_DOTS; i++)
     {
     diameter = random(2, distance);
     
     x = mouseX + random(-distance, distance);
     y = mouseY + random(-distance, distance);
     
     // Get the colour from the image at the x and y position and store in c
     c = backgroundImage.get((int)x, (int)y);
     
     // Set the fill colour to the colour in C with an opacity value of 30
     // make sure this does the opacity.
     fill(c, 30);
     
     ellipse(x, y, diameter, diameter);
     }
     
}
 
}
