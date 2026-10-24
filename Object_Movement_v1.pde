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
    if (xPos - radius < 0 || xPos + radius > width) 
    {
      vx = -vx;
    }
    
    // boundaries with top/bottom walls
    if (yPos - radius < 0 || yPos + radius > height)
    {
      vy = -vy;
    }
}
  
  
  
  
  
  
  
