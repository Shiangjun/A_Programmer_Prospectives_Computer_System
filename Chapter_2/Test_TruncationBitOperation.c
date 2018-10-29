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
  int x =53191;
  short sx = (short) x;
  int y = sx;

  printf("x = %d:\t", x);
  show_bytes((byte_pointer) &x, sizeof(int));
  printf("sx = %d:\t", sx);
  show_bytes((byte_pointer) &sx, sizeof(int));
  printf("y   = %d:\t", y);
  show_bytes((byte_pointer) &x, sizeof(int));
}
