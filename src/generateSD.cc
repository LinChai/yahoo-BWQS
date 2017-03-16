#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
#define F 700
#define L 10

int main() {
  vector<int> cache_size;
  cache_size.push_back(16384);
  cache_size.push_back(131072);
  cache_size.push_back(1572864);
  
  for(int i = 0; i < cache_size.size(); i++) {
    if(i == 0) {
      for(int S = 10; S < 20000; S+=10) {
        int D = (cache_size[i] - 4*F - L *S *(12+L/8))/(4*F+L*S/8);
        if(D <= 0)
          break;
        cout << "(" << cache_size[i] << ", " << D << ", " << S <<")";
      }
    }
    else if(i == 1) {
      for(int S = 100; S < 20000; S +=100) {
        int D = (cache_size[i] - 4*F - L *S *(12+L/8))/(4*F+L*S/8);
        if(D <= 0)
          break;
        cout << "(" << cache_size[i] << ", " << D << ", " << S <<")";
      }
    }
    else {
      for(int S = 500; S < 20000; S +=500) {
        int D = (cache_size[i] - 4*F - L *S *(12+L/8))/(4*F+L*S/8);
        if(D <= 0)
          break;
        cout << "(" << cache_size[i] << ", " << D << ", " << S <<")";
      }
    }
  }
  return 0;
}

