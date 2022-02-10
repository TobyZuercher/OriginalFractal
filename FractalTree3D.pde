PShape tree;

void setup() {
  size(600, 600, P3D);
  background(0);
  strokeWeight(2);
  camera(width/2.0+200, height/2.0+200, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  //translate(width/2, 7*height/8);
  stroke(0, 255, 0, 50);
  
  
  tree = createShape(GROUP);
  makeFractalTree(width/2, 7*height/8, 0, 100, 0, tree);
  shape(tree);
}

void draw() {
  shape(tree);
}
