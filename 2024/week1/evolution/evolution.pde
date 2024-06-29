

Cell newCell(Cell parentCell) {
  if (parentCell == null) {
    return null; // Return null if the parent cell is null
  }
  char currentGene = parentCell.getDna().charAt(parentCell.getActive());
  
  float newX;
  float newY;
  float newW;
  float newL;
  
  switch(currentGene) {
         case 'F':
           newX = parentCell.x + parentCell.w * cos(radians(parentCell.angle));
           break;
               
         case 'S' :                                                                                      
           newX = parentCell.x;
           break;
           
         default:
           newX = parentCell.x;
           break;
           
  }
               
   switch(currentGene) {
         case 'F':
           newY = parentCell.y - parentCell.w * sin(radians(parentCell.angle));
           break;
               
         case 'S' :
           newY = parentCell.y;
           break;
           
         default:
           newY = parentCell.y;
           break;
           
  }
               
   switch(currentGene) {
         case 'G':
           newW = parentCell.k * parentCell.w;
           break;
               
         case 'S' :
           newW = parentCell.w;
           break;
           
         default:
           newW = parentCell.w;
           break;
           
  }     
 
 
   switch(currentGene) {
         case 'G':
           newL = parentCell.k * parentCell.l;
           break;
               
         case 'S':
           newL = parentCell.w;
           break;
           
         default:
           newL = parentCell.w;
           break;
   }
           
   return new Cell(
    parentCell.getDna(),     // Copy DNA
    advance(parentCell), // Copy active gene
    newX, // Randomly offset x-coordinate
    newY, // + random(0, 50), // Randomly offset y-coordinate
    newW,     // Copy and modify w
    newL,      // Copy and modify l
    parentCell.k, // Copy k parameter
    parentCell.angle + 10, //+ random(-30, 30), // Randomly adjust angle
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
