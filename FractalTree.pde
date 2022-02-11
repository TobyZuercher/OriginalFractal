public void makeFractalTree(float x, float y, float z, float len, float angle, PShape s) {
  fractalTree(x, y, z, len, angle, s, 0, len);
  System.out.println("There are " + s.getChildCount() + " total branches");
}

public void fractalTree(float x, float y, float z, float len, float angle, PShape s, int n, float olen) {
  float a = radians(angle);
  int plusA = 10;
  
  if(len < 10) return;
  
  if(n == 0) { //first line, trunk
    PShape baseBranch = makeCylinder(x, y, z, x, y-len, z, len, olen);
    baseBranch.setFill(color(0, 255, 0, 50));
    baseBranch.setStroke(false);
    s.addChild(baseBranch);
    for(int i = 1; i <= 3; i++) {
      float nlen = len*(float)(Math.random() * 0.05 + 0.75);
      fractalTree(x, y-len, z, nlen, angle + plusA, s, i, len);
    }
  }
  
  if(n == 1) { //branch 1: goes up and back
    float nX = x;
    float nY = y-len*cos(a);
    float nZ = z-len*sin(a);
    PShape branch = makeCylinder(x, y, z, nX, nY, nZ, len, olen);
    branch.setFill(color(0, 255, 0, 50));
    branch.setStroke(false);
    s.addChild(branch);
    for(int i = 1; i <= 3; i++) {
      float nlen = len*(float)(Math.random() * 0.05 + 0.75);
      fractalTree(nX, nY, nZ, nlen, angle + plusA, s, i, len);
    }
  }
  
  if(n == 2) { //branch 2: goes up, forward, and to the left
    float nX = x-(len*sin(a)*cos(PI/6));
    float nY = y-len*cos(a);
    float nZ = z+(len*sin(a)*sin(PI/6));
    PShape branch = makeCylinder(x, y, z, nX, nY, nZ, len, olen);
    branch.setFill(color(0, 255, 0, 50));
    branch.setStroke(false);
    s.addChild(branch);
    for(int i = 1; i <= 3; i++) {
      float nlen = len*(float)(Math.random() * 0.05 + 0.75);
      fractalTree(nX, nY, nZ, nlen, angle + plusA, s, i, len);
    }
  }
  
  if(n == 3) { //branch 3: goes up, forward, and to the right
    float nX = x+(len*sin(a)*cos(PI/6));
    float nY = y-len*cos(a);
    float nZ = z+(len*sin(a)*sin(PI/6));
    PShape branch = makeCylinder(x, y, z, nX, nY, nZ, len, olen);
    branch.setFill(color(0, 255, 0, 50));
    branch.setStroke(false);
    s.addChild(branch);
    for(int i = 1; i <= 3; i++) {
      float nlen = len*(float)(Math.random() * 0.05 + 0.75);
      fractalTree(nX, nY, nZ, nlen, angle + plusA, s, i, len);
    }
  }
}
