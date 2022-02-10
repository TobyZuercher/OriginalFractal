public PShape makeCylinder(float x, float y, float z, float nX, float nY, float nZ, float r) {
  int numSides = 30;
  PShape cylinder = createShape(GROUP);
  cylinder.setStroke(0);
  cylinder.setFill(color(0, 255, 0));
  PShape top, bottom, sides;
  top = makeEllipseZ(x, y, z, r, numSides, false);
  bottom = makeEllipseZ(nX, nY, nZ, r, numSides, true);
  sides = createShape();
  sides.beginShape(TRIANGLE_STRIP);
  for(float i = 0; i < 2*PI; i += 2*PI/numSides) {
    sides.vertex(x+r*cos(i), y, z+r+sin(i));
    sides.vertex(nX+r*cos(i+PI/numSides), nY, nZ+r+sin(i+PI/numSides));
  }
  sides.endShape(CLOSE);
  cylinder.addChild(sides);
  cylinder.addChild(top);
  cylinder.addChild(bottom);
  return cylinder;
}

public PShape makeEllipseZ(float x, float y, float z, float r, float n, boolean rSlight) { //rSlight to change rot of bottom by (2*PI/n) / 2, perfectly offset vertices
  PShape ellipse = createShape();
  ellipse.beginShape();
  for(float i = (rSlight ? PI/n : 0); i < 2*PI + (rSlight ? PI/n : 0); i += 2*PI/n) {
    ellipse.vertex(x+r*cos(i), y, z+r*sin(i));
  }
  ellipse.endShape(CLOSE);
  return ellipse;
}
