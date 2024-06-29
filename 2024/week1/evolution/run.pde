
ArrayList<Cell> cells; // ArrayList to hold Cell objects

void setup() {
  size(1400, 900);
  textSize(16);

  // Initialize the cells ArrayList
  cells = new ArrayList<Cell>();
  for (int i = 0; i < 1; i++) {
    cells.add(new Cell(
      "FGFGFGS", 
      0,          // active gene
      width/2,    // x-coordinate
      height/2,        // y-coordinate
      100,         // w
      50,         // l
      1.1,        // k parameter
      0,         // angle
      10,         // r
      150,        // g
      30,         // b
      3           // a
    ));
  }
}

void draw() {
  background(255); // Clear the background each frame

  // Display each cell
  for (Cell cell : cells) {
    cell.display();
  }
  
  footer();

}

void keyPressed() {
 if (key == 'n' || key == 'N') {
    // Add a new cell 
    // Cell c = newCell(lastCell(cells));
    cells.add(newCell(lastCell(cells)));
  } else { exit(); }
}


void footer() {
     Cell lastCell = lastCell(cells);
    if (lastCell != null) {
      String dna = lastCell.getDna();
      String prefix = dna.substring(0, lastCell.getActive());
      int dnaLength = dna.length();
      String activeGene = dna.substring(lastCell.getActive(),lastCell.getActive() + 1);
      String suffix = dna.substring(lastCell.getActive() + 1,dnaLength);
      String listLength = str(cells.size());
      String message = "Cell DNA (" + listLength + "): " + prefix + "(" + activeGene + ")" + suffix ;
      
      fill(0);
      text(message, width / 2, height - 40);
      text("Last cell position: (" + round(lastCell.getX()) + ", " + 
         round(lastCell.getY()) + ") " + round(lastCell.getAngle()), width / 2, height - 20);
     
  } else {
      fill(0); 
      text("The cell list is empty.", width / 2, height - 40);
    }
}
