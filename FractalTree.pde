public void makeFractalTree(float x, float y, float z, float len, float angle, PShape s) {
  fractalTree(x, y, z, len, angle, s);
  System.out.println("There are " + s.getChildCount() + " total branches");
}

public void fractalTree(float x, float y, float z, float len, float angle, PShape s) {
  float a = radians(angle);
}
