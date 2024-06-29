
ArrayList<Cell> cells; // ArrayList to hold Cell objects

void setup() {
  size(600, 600);
  textSize(16);

  // Initialize the cells ArrayList
  cells = new ArrayList<Cell>();
  for (int i = 0; i < 10; i++) {
    cells.add(new Cell(
      "ATCG", 
      0,
      random(width), 
      random(height), 
      random(20, 100), 
      random(20, 100), 
      random(10, 50), 
      random(0.5, 2.0), 
      random(360), 
      random(255), 
      random(255), 
      random(255), 
      random(255)
    ));
  }
}

void draw() {
  background(255); // Clear the background each frame

  // Display each cell
  for (Cell cell : cells) {
    cell.display();
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    // Update each cell's properties and color
    for (Cell cell : cells) {
      cell.setDna("GCTA");
      cell.setActive(0);
      cell.setX(random(width));
      cell.setY(random(height));
      cell.setW1(random(10, 50));
      cell.setW2(random(10, 50));
      cell.setH(random(50, 150));
      cell.setK(random(0.5, 2.0));
      cell.setAngle(random(360));
      cell.setR(random(255));
      cell.setG(random(255));
      cell.setB(random(255));
      cell.setA(random(255));
    }
  } else if (key == 'n' || key == 'N') {
    // Add a new cell with random properties
    cells.add(new Cell(
      "NEW", 
      0,
      random(width), 
      random(height), 
      random(10, 50), 
      random(10, 50), 
      random(50, 150), 
      random(0.5, 2.0), 
      random(360), 
      random(255), 
      random(255), 
      random(255), 
      random(255)
    ));
  } else {
    exit();
  }
}
