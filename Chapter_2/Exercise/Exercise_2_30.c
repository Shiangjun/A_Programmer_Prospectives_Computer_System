#include<stdio.h>

/*Determine whether arguments can be added without overflow */

void tadd_ok(unsigned x, unsigned y){
  int sum = x+y;
  int neg_over = x < 0 && y < 0 && sum >= 0;
  int pos_over = x >= 0 && y >=0 && sum < 0;
  return !neg_over && !pos_over;
}
