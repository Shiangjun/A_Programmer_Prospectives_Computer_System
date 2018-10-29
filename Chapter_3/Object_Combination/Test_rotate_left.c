

void rotate_left(struct rect *rp){
  /* Exchange width and height */
  long t = rp->height;
  rp->height = rp->width;
  rp->width = t;
  /* Shift to new lower-left corner */
  rp->llx -= t;
}
  
