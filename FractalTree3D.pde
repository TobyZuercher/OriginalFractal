PShape tree;
float rotX = 0, rotY = 0, rotZ = 0;

void setup() {
  size(600, 600, P3D);
  background(0);
  strokeWeight(1);
  camera(width/2.0, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0) - 100, width/2.0, height/2.0, 0, 0, 1, 0); //default
  stroke(0, 255, 0, 50);
  tree = createShape(GROUP);
  makeFractalTree(0, 0, 0, 100, 10, tree);
  translate(width/2, 7*height/8);
  shape(tree);
}

void draw() {
  background(0);
  translate(width/2, 7*height/8);
  rotateY(rotY);
  shape(tree);
  if(keyPressed)
     checkKeys();
}


void checkKeys() {
  switch(key) {
    case 'a': rotY += 0.02;
        break;
    case 'd': rotY -= 0.02;
        break;
    default: break;
  }
}
