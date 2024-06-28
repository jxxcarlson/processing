


void subdivide(float x, float y, float w, float h, float k, int depth) {
  float dx;
  float dy;
  if (depth == 0) {}
  else {
    rect(x,y,w,h, depth);
    if (random(0,1) < 0.5) {dx = 0; } else { dx = (1 - k)*w; }
    if (random(0,1) < 0.5) {dy = 0; } else { dy = (1 - k)*h; }
    subdivide(x + dx,y + dy,k*w, k*h,k,depth - 1);
  }
}

void inset(float x, float y, float w, float h, float k, int depth) {
  if (w < 10 || h < 10) { k = 1; }
  
  float dx = (1 - k)*w/2;
  float dy = (1 - k)*h/2;
  if (depth == 0) {}
  else {
    rect(x + dx,y + dy,w*k,h*k, depth);  
    inset(x + dx,y + dy,k*w, k*h,k,depth - 1);
  }
}


int irandom(float low, float high) {
  return int(round(random(low, high)));
}
