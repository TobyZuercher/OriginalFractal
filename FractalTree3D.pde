PShape tree;

void setup() {
  size(600, 600, P3D);
  background(0);
  strokeWeight(2);
  translate(width/2, 7*height/8);
  stroke(0, 255, 0, 50);
  
  
  tree = createShape(GROUP);
  makeFractalTree(0, 0, 0, 100, 0, tree);
  shape(tree);
}

void draw() {
  shape(tree);
}
