#include<stdio.h>

typedef unsigned char *byte_pointer;


void show_bytes(byte_pointer start, size_t len) {
    size_t i;
    for (i=0; i<len; i++)
      printf("%.2x",start[i]);
    printf("\n");
}

void show_int(int x) {
    show_bytes((byte_pointer) &x, sizeof(int));
}

void show_float(float x) {
    show_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(void *x) {
  show_bytes((byte_pointer) &x, sizeof(void *));
}

void main()
{
  short sx = -12345;
  unsigned uy = sx;

  printf("uy  = %u:\t", uy);
  show_bytes((byte_pointer) &uy, sizeof(unsigned));

  unsigned short sxx = -12345;
  unsigned uyy = sxx;

  printf("sux = %u:\t", uyy);
  show_bytes((byte_pointer) &uyy, sizeof(unsigned));
}
