
float distance2(float x1, float y1, float x2, float y2) {
    float dx = x1 - x2;
    float dy = y1 - y2;
    return sqrt(dx*dx + dy*dy);
}

float distance1(float x1, float y1, float x2, float y2) {
    float dx = x1 - x2;
    float dy = y1 - y2;
    return abs(dx) + abs(dy);
}

float distance(float x1, float y1, float x2, float y2) {
    float dx = x1 - x2;
    float dy = y1 - y2;
    return max(abs(dx), abs(dy));
}


boolean not_dead_spot(float x, float y, float a, float b, float r) {
   return !(distance                                                                  (x, y, a, b) < r);
}

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
