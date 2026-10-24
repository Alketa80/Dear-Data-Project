// DvD logo style movement of objects test

float xPos;// position of ball
float yPos; 

float vx;// velocity of ball
float vy;

float radius; // size of ball

void setup() {
  size(800, 800);
  
  
  radius = 50;
  
  xPos = 200;
  yPos = 200;
  
  vx = 3; // ball speed
  vy = 2;
  
}

void draw() 
{
    background(200);
    // movement
    xPos = xPos + vx;
    yPos = yPos + vy;
    
    // draw ball
    noStroke();
    fill(255, 0, 255);
    circle(xPos, yPos, radius);
    
    // boundaries with wall edges to create dvd logo effect
    
    // boundaries with left/right walls
    if (xPos - radius < -radius/2 || xPos + radius > width + radius/2) 
    {
      vx = -vx;
    }
    
    // boundaries with top/bottom walls
    if (yPos - radius < -radius/2 || yPos + radius > height + radius/2)
    {
      vy = -vy;
    }
}
  
 // v2 - fixed border where circle doesnt fully touch through radius/2 
  
  
  
  
  
