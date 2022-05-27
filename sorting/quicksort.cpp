#include<bits/stdc++.h>
using namespace std;
int arr[] = {
  10,
  16,
  8,
  12,
  15,
  6,
  3,
  9,
  5,
  INT_MAX
};

int part(int l, int h) {
  int i = l, j = h;
  int pivot = arr[l];

  while (i < j) {
    do {
      i++;
    } while (arr[i] <= pivot);
    do {
      j--;
    } while (arr[j] > pivot);
    
    if (i < j) swap(arr[i], arr[j]);
  }
  swap(arr[j], arr[l]);
  
  for(int i=0;i<10;i++){
      if(arr[i]==pivot){
          return i;
      }
  }
}

void quicksort(int l,int h){
    if(l<h){
        int j=part(l,h);
        quicksort(l,j);
        quicksort(j+1,h);
    }
}

int main() {
    quicksort(0,9);
    for (int i = 0; i < 10; i++) cout << arr[i] << " ";
}
