#include<bits/stdc++.h>
using namespace std;
template<class T>
void mergesort(T l,T h){
    if(l<h){
        T mid = l + (h - l) / 2;
        mergesort(l,mid);
        mergesort(mid+1,h);
        std::inplace_merge(l,mid,h);
    }
}

int main(){
    vector<int> arr{8, 2, -2, 0, 11, 11, 1, 7, 3};
    mergesort(arr.begin(),arr.end());
    for(int i=0;i<9;i++) cout<<arr[i]<<" ";
}
