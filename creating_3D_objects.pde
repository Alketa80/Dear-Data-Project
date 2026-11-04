void setup() {
  size(500,500, P3D);
}

void draw() {
  background(200);
  stroke(255,0,0);
  strokeWeight(5.6);
  
  lights();
  directionalLight(12, 10, 226, -1, 0, 0);
  directionalLight(226, 10, 12, 1, 0, 0);

  
  pushMatrix();
  translate(200,200,-160);
  rotateY(radians(frameCount));
  rotateX(radians(frameCount * 2));
  scale(0.2,4,2);
  box(60,60,60);
  popMatrix();
  
  pushMatrix();
  noStroke();
  translate(400,400, -160);
  rotateY(radians(frameCount));
  sphere(80);
  popMatrix();
    
}  
