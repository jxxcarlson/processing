Cell cell;

void setup() {
  size(600, 600);
  textSize(16);

  // Create a Cell object with initial color red
  cell = new Cell("ATCG", width / 2, height / 2, 50, 70, 100, 1.0, 0, 255, 0, 0, 255);
}

void draw() {
  background(255); // Clear the background each frame

  // Display the cell
  cell.display();
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    // Use setters to update cell properties and color
    cell.setDna("GCTA");
    cell.setX(random(width));
    cell.setY(random(height));
    cell.setW1(random(20, 100));
    cell.setW2(random(20, 100));
    cell.setH(random(10, 50));
    cell.setK(random(0.5, 2.0));
    cell.setAngle(random(360));
    cell.setR(random(255));
    cell.setG(random(255));
    cell.setB(random(255));
    cell.setA(random(255));
  } else {
    exit();
  }
}
