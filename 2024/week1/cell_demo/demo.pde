Cell demo_cell;

void setup() {
  size(600, 600);
  textSize(16);

  // Create a Cell object with initial color red
  demo_cell = new Cell("ATCG", width / 2, height / 2, 50, 70, 100, 1.0, 0, 255, 0, 0, 255);
}

void draw() {
  background(255); // Clear the background each frame

  // Display the demo_cell
  demo_cell.display();
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    // Use setters to update demo_cell properties and color
    demo_cell.setDna("GCTA");
    demo_cell.setX(random(width));
    demo_cell.setY(random(height));
    demo_cell.setW1(random(20, 100));
    demo_cell.setW2(random(20, 100));
    demo_cell.setH(random(10, 50));
    demo_cell.setK(random(0.5, 2.0));
    demo_cell.setAngle(random(360));
    demo_cell.setR(random(255));
    demo_cell.setG(random(255));
    demo_cell.setB(random(255));
    demo_cell.setA(random(255));
  } else {
    exit();
  }
}
