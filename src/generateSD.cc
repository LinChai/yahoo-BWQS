#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
#define F 700
#define L 150

int main() {
  vector<int> cache_size;
  cache_size.push_back(16384);
  cache_size.push_back(131072);
  cache_size.push_back(1572864);
  
  for(int i = 0; i < cache_size.size(); i++) {
    if(i == 0) {
      for(int S = 10; S < 20000; S+=10) {
        int D = 0;
        if(L%8 == 0)
          D = (cache_size[i] - 4*F - L *S *(12+L/8))/(4*F+S*L/8);
        else
          D = (cache_size[i] - 4*F - L *S *(12+L/8+1))/(4*F+S*(L/8+1));
        if(D <= 0)
          break;
        cout << "(" << cache_size[i] << ", " << D << ", " << S <<")" << endl;;
      }
    }
    else if(i == 1) {
      cout << "#########" << endl;
      for(int S = 100; S < 20000; S +=100) {
        int D = 0;
        if(L%8 == 0)
          D = (cache_size[i] - 4*F - L *S *(12+L/8))/(4*F+S*L/8);
        else
          D = (cache_size[i] - 4*F - L *S *(12+L/8+1))/(4*F+S*(L/8+1));
        if(D <= 0)
          break;
        cout << "(" << cache_size[i] << ", " << D << ", " << S <<")"<< endl;
      }
    }
    else {
      cout << "########" << endl;
      for(int S = 500; S < 20000; S +=500) {
        int D = 0;
        if(L%8 == 0)
          D = (cache_size[i] - 4*F - L *S *(12+L/8))/(4*F+S*L/8);
        else
          D = (cache_size[i] - 4*F - L *S *(12+L/8+1))/(4*F+S*(L/8+1));
        if(D <= 0)
          break;
        cout << "(" << cache_size[i] << ", " << D << ", " << S <<")" << endl;
      }
    }
  }
  return 0;
}

