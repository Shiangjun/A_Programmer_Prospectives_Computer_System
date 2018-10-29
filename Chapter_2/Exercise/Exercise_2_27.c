#include<stdio.h>

/*Determine whether arguments can be added without overflow */

void uadd_ok(unsigned x, unsigned y){
  unsigned sum = x+y;
  return sum >= x;
}
