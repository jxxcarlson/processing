
import java.util.*;


ArrayList<Cell> cells; // ArrayList to hold Cell objects

String timestamp() {
  Calendar now = Calendar.getInstance();
  int year = now.get(Calendar.YEAR);
  int month = now.get(Calendar.MONTH) + 1; // Months are zero-based
  int day = now.get(Calendar.DAY_OF_MONTH);
  int hour = now.get(Calendar.HOUR_OF_DAY);
  int minute = now.get(Calendar.MINUTE);
  int second = now.get(Calendar.SECOND);
  
  // Format the timestamp string
  return nf(year, 4) + nf(month, 2) + nf(day, 2) + "_" + nf(hour, 2) + nf(minute, 2) + nf(second, 2);
}


String titlePrefix = "exports/export_"+timestamp();



void setup() {
  size(1400, 900);
  textSize(16);

  // Initialize the cells ArrayList
  cells = new ArrayList<Cell>();
  for (int i = 0; i < 1; i++) {
    cells.add(new Cell(
      "CCCFFFFFFFFFFGFFFFFFFCFFFFFFFFFFFFFFFFFFFgR", 
      0,          // active gene
      width/2,    // x-coordinate
      height/2,        // y-coordinate
      20,         // w
      10,         // l
      1.4,        // k parameter
      0,         // angle
      10,         // r
      150,        // g
      30,         // b
      20           // a
    ));
  }
}

void draw() {
  background(255); // Clear the background each frame
  cells.add(newCell(lastCell(cells))); 
  // Display each cell
  for (Cell cell : cells) {
    cell.display();
  }
  
  footer();

}

void keyPressed() {
 if (key == 's' || key == 'S') {
     save(titlePrefix + ".png");
  } 
 else if (key == 'q' || key == 'Q' ) {
    exit(); 
 }
   else {cells.add(newCell(lastCell(cells))); }
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
