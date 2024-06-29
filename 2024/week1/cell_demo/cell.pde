class Cell {
  String dna; // DNA of the cell
  float x;    // X position of the cell
  float y;    // Y position of the cell
  float w1;   // Width 1 of the cell
  float w2;   // Width 2 of the cell
  float h;    // Height of the cell
  float k;    // Some additional property of the cell
  float angle; // Angle of rotation
  float r;    // Red color component
  float g;    // Green color component
  float b;    // Blue color component
  float a;    // Alpha (opacity) component

  // Constructor
  Cell(String dna, float x, float y, float w1, float w2, float h, float k, float angle, float r, float g, float b, float a) {
    this.dna = dna;
    this.x = x;
    this.y = y;
    this.w1 = w1;
    this.w2 = w2;
    this.h = h;
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

  void setDna(String dna) {
    this.dna = dna;
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
  float getW1() {
    return w1;
  }

  void setW1(float w1) {
    this.w1 = w1;
  }

  // Getter and Setter for w2
  float getW2() {
    return w2;
  }

  void setW2(float w2) {
    this.w2 = w2;
  }

  // Getter and Setter for h
  float getH() {
    return h;
  }

  void setH(float h) {
    this.h = h;
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
    translate(x, y);
    rotate(radians(angle));
    textAlign(CENTER, CENTER);
    fill(r, g, b, a);
    noStroke();

    float halfH = h / 2;
    float halfW1 = w1 / 2;
    float halfW2 = w2 / 2;

    beginShape();
    vertex(-halfW1, -halfH);
    vertex(halfW1, -halfH);
    vertex(halfW2, halfH);
    vertex(-halfW2, halfH);
    endShape(CLOSE);

    fill(0); // Set text color to black
    text("DNA: " + dna, 0, -h / 2 - 20);

    popMatrix();
  }
}
