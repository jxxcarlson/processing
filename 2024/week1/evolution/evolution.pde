

Cell newCell(Cell parentCell) {
  if (parentCell == null) {
    return null; // Return null if the parent cell is null
  }
  char currentGene = parentCell.getDna().charAt(parentCell.getActive());
  
  float newX;
  float newY;
  float newW;
  float newL;
  float newAngle;
  float newR;
  float newG;
  float newB;
  float newA;
  
  switch(currentGene) { 
         case 'R':
           newAngle = -parentCell.angle;
           newX = parentCell.x;
           newY = parentCell.y;
           newW = parentCell.w;;
           newL = parentCell.l;
           newR = parentCell.r;
           newG = parentCell.g;
           newB = parentCell.b;
           newA = parentCell.a;
           
           break;
           
         
         case 'G':
           newAngle = parentCell.angle;
           newX = parentCell.x;
           newY = parentCell.y;
           newW = parentCell.w * parentCell.k;
           newL = parentCell.l * parentCell.k;
           newR = parentCell.r;
           newG = parentCell.g;
           newB = parentCell.b;
           newA = parentCell.a;
           break;
           
         case 'g':
           newAngle = parentCell.angle;
           newX = parentCell.x;
           newY = parentCell.y;
           newW = parentCell.w / parentCell.k;
           newL = parentCell.w / parentCell.k;
           newR = parentCell.r;
           newG = parentCell.g;
           newB = parentCell.b;
           newA = parentCell.a;
           break;
           
         case 'F':
            if (parentCell.angle > 0)
              {newAngle = parentCell.angle + 10 + random(-6, 6);}
            else 
              {newAngle = parentCell.angle - 10  + random(-6, 6);}
              
           float xx = parentCell.x + parentCell.w * cos(radians(parentCell.angle));
           float yy = parentCell.y - parentCell.w * sin(radians(parentCell.angle));
              
           if (xx < -50) { newX = 100; } 
           else if (xx > width + 50) { newX = width - 100;}
           else { newX = xx; }
           
           if (yy < -50) { newY = 100; } 
           else if (yy > height + 50) { newY = height - 100;}
           else { newY = yy; }
           
           newW = parentCell.w;
           newL = parentCell.l;
           newR = parentCell.r;
           newG = parentCell.g;
           newB = parentCell.b;
           newA = parentCell.a;
           break;
           
         case 'C' : 
           newAngle = parentCell.angle;
           newX = parentCell.x;
           newY = parentCell.y;
           newW = parentCell.w;
           newL = parentCell.l;
           newR = constrain(parentCell.r + random(-12,12), 0, 255);
           newG = constrain(parentCell.g + random(-12,12), 0, 255);
           newB = constrain(parentCell.b + random(-12,12), 0, 255);
           newA = constrain(parentCell.a + random(-12,12), 10, 50);
           break;           
           
         case 'S' : 
           newAngle = parentCell.angle;
           newX = parentCell.x;
           newY = parentCell.y;
           newW = parentCell.k;
           newL = parentCell.l;
           newR = parentCell.r;
           newG = parentCell.g;
           newB = parentCell.b;
           newA = parentCell.a;
           break;
           
         default:
           newAngle = parentCell.angle;
           newX = parentCell.x;
           newY = parentCell.y;
           newW = parentCell.k;
           newL = parentCell.l;
           newR = parentCell.r;
           newG = parentCell.g;
           newB = parentCell.b;
           newA = parentCell.a;
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
    newAngle, //+ random(-30, 30), // Randomly adjust angle
    newR, // Copy r
    newG, // Copy g
    newB, // Copy b
    newA // Copy a
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
