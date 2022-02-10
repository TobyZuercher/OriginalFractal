public void makeFractalTree(float x, float y, float z, float len, float angle, PShape s) {
  fractalTree(x, y, z, len, angle, s, 0);
  System.out.println("There are " + s.getChildCount() + " total branches");
}

public void fractalTree(float x, float y, float z, float len, float angle, PShape s, int n) {
  float a = radians(angle);
  
  if(len < 5) return;
  
  if(n == 0) { //first line, trunk //CHANGE TO CYLINDER
    PShape line = createShape();
    line.beginShape(LINES);
    stroke(255);
    line.vertex(x, y, z);
    line.vertex(x, y-len, z);
    line.endShape();
    s.addChild(line);
    for(int i = 1; i <= 3; i++)
      fractalTree(x, y-len, z, len*0.8, angle, s, i);
  }
  
  if(n == 1) { //branch 1, goes up and back //CHANGE TO CYLINDER
    float nX = x;
    float nY = y-len*cos(a);
    float nZ = z-len*sin(a);
    PShape line = createShape();
    line.beginShape(LINES);
    line.vertex(x, y, z);
    line.vertex(nX, nY, nZ);
    line.endShape();
    line.setStroke(color(255));
    s.addChild(line);
    for(int i = 1; i <= 3; i++)
      fractalTree(nX, nY, nZ, len*0.8, angle, s, i);
  }
}
