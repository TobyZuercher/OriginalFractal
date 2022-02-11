public PShape makeCylinder(float x, float y, float z, float nX, float nY, float nZ, float len, float olen) { //make them look better lol
  float r = log(len);
  int numSides = 15;
  float o = log(olen);
  float pin = PI/numSides;
  PShape cylinder = createShape(GROUP);
  PShape top, bottom, sides;
  //top = makeEllipseZ(x, y, z, r, numSides, false);
  //bottom = makeEllipseZ(nX, nY, nZ, r, numSides, true);
  sides = createShape();
  sides.beginShape(TRIANGLE_STRIP);
  for(float i = 0; i <= 2*PI; i += 2*pin) {
    sides.vertex(x+o*cos(i), y, z+o*sin(i));
    sides.vertex(nX+r*cos(i+pin), nY, nZ+r*sin(i+pin));
  }
  sides.endShape(CLOSE);
  cylinder.addChild(sides);
  return cylinder;
}

public PShape makeEllipseZ(float x, float y, float z, float r, float n, boolean rSlight) { //rSlight to change rot of bottom by (2*PI/n) / 2, perfectly offset vertices
  PShape ellipse = createShape();
  float pin = PI/n;
  ellipse.beginShape();
  for(float i = (rSlight ? pin : 0); i < 2*PI + (rSlight ? pin : 0); i += 2*pin) {
    ellipse.vertex(x+r*cos(i), y, z+r*sin(i));
  }
  ellipse.endShape(CLOSE);
  return ellipse;
}
