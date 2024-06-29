import java.util.ArrayList;

class Cell {
  String dna; // DNA of the cell
  int active; // active gene
  float x;    // X position of the cell
  float y;    // Y position of the cell
  float w;    // Width  of the cell
  float l;    // Length of the cell
  float k;    // Some additional property of the cell
  float angle; // Angle of rotation
  float r;    // Red color component
  float g;    // Green color component
  float b;    // Blue color component
  float a;    // Alpha (opacity) component

  // Constructor
  Cell(String dna, int active, float x, float y, float w, float l, float k, float angle, float r, float g, float b, float a) {
    this.dna = dna;
    this.active = active;
    this.x = x;
    this.y = y;
    this.w = w;
    this.l = l;
    this.k = k;
    this.angle = angle;
    this.r = r;
    this.g = g;
    this.b = b;
    this.a = a;
  }

  // Getter and Setter for dna
  String getDna() {
    return dna;
  }
  
  int getActive() { 
    return active;
  }

  void setDna(String dna) {
    this.dna = dna;
  }
  
  void setActive(int active) {
    this.active = active;
  }

  // Getter and Setter for x
  float getX() {
    return x;
  }

  void setX(float x) {
    this.x = x;
  }

  // Getter and Setter for y
  float getY() {
    return y;
  }

  void setY(float y) {
    this.y = y;
  }

  // Getter and Setter for w1
  float getW() {
    return w;
  }

  void setW(float w1) {
    this.w = w;
  }

  // Getter and Setter for l
  float getL() {
    return l;
  }

  void setL(float l) {
    this.l = l;
  }

  // Getter and Setter for k
  float getK() {
    return k;
  }

  void setK(float k) {
    this.k = k;
  }

  // Getter and Setter for angle
  float getAngle() {
    return angle;
  }

  void setAngle(float angle) {
    this.angle = angle;
  }

  // Getter and Setter for color components
  float getR() {
    return r;
  }

  void setR(float r) {
    this.r = r;
  }

  float getG() {
    return g;
  }

  void setG(float g) {
    this.g = g;
  }

  float getB() {
    return b;
  }

  void setB(float b) {
    this.b = b;
  }

  float getA() {
    return a;
  }
  void setA(float a) {
    this.a = a;
  }

  // Display method
  void display() {
    pushMatrix();
   // translate(x, y);
    // rotate(radians(angle));
    textAlign(CENTER, CENTER);
    fill(r, g, b, a);
    stroke(r, g, b, a);
    rect(x,y,w,l);
    //ellipse(x, y + w/2, 10, 10); 
    println(x,y,w,l);

    popMatrix();
  }
}
