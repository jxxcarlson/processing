
Cell newCellQ(Cell parentCell) {
  if (parentCell == null) {
    return null; // Return null if the parent cell is null
  }
  return new Cell(
      parentCell.getDna(),
      advance(parentCell),
      random(0, width), //parentCell.getX() + sin(parentCell.getAngle())*cell.getH(), 
      random(0, height), //parentCell.getY() + cos(parentCell.getAngle())*cell.getH()*(1 - parentCell.getK()), 
      parentCell.getW1(), 
      parentCell.getW2(), 
      parentCell.getK()*parentCell.getH(), 
      0, //+ 10, 
      0,           // new angle
      random(0,255), 
      parentCell.getG(), 
      parentCell.getB(), 
      constrain(parentCell.getA()*1.1, 0, 255)
    );
}


Cell newCell(Cell parentCell) {
  if (parentCell == null) {
    return null; // Return null if the parent cell is null
  }
  return new Cell(
    parentCell.getDna(),     // Copy DNA
    parentCell.getActive(), // Copy active gene
    parentCell.x + random(-50, 50), // Randomly offset x-coordinate
    parentCell.y + random(-50, 50), // Randomly offset y-coordinate
    parentCell.w1*parentCell.k,     // Copy and modify w1
    parentCell.w2*parentCell.k,     // Copy and modify w2
    parentCell.h/parentCell.k,      // Copy and modify h
    parentCell.k, // Copy k parameter
    parentCell.angle + random(-30, 30), // Randomly adjust angle
    parentCell.r, // Copy r
    parentCell.g, // Copy g
    parentCell.b, // Copy b
    parentCell.a // Copy a
  );
}

Cell newCell2(Cell parentCell) {
  if (parentCell == null) {
    return null; // Return null if the parent cell is null
  }
  return new Cell(
    parentCell.getDna(), // Copy DNA
    parentCell.getActive(), // Copy active gene
    parentCell.x + random(-50, 50), // Randomly offset x-coordinate
    parentCell.y + random(-50, 50), // Randomly offset y-coordinate
    parentCell.w1, // Copy w1
    parentCell.w2, // Copy w2
    parentCell.h, // Copy h
    parentCell.k, // Copy k parameter
    parentCell.angle + random(-30, 30), // Randomly adjust angle
    parentCell.r, // Copy r
    parentCell.g, // Copy g
    parentCell.b, // Copy b
    parentCell.a // Copy a
  );
}

Cell lastCell(ArrayList<Cell> cells) {
  if (cells.size() == 0) {
    return null; // Return null if the list is empty
  }
  return cells.get(cells.size() - 1);
}


int advance(Cell cell) {
   int k = cell.getActive();
   if (k < cell.getDna().length() - 1)
     { return k + 1; }
   else
     { return 0; }
}
