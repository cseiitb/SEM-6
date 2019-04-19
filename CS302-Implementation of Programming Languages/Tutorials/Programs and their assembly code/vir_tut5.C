#include <iostream>
using namespace std;

class Base
{ public:
   int b;
   int f1(int a) {return b+a;}; 
   int f2(int i, int j) {return i*b+j;};
};

class D1: public Base { public: int d1; 
   virtual int f1() { return d1+b;};  
};

class D2: public D1 { public: int d2; 
   virtual int f1(int k) {return d2+k;}; 
};

int main()
{ int s1, s2, s3;
  s1 = sizeof(Base); s2 = sizeof(D1); s3 = sizeof(D2);
  cout << s1 << "  " << s2 << "  " << s3 << endl;
  Base b; D1 dd1, dd12; D2 dd2, dd22;
  b.b = 5; dd1.b = 10; dd1.d1 = 11; dd12.b = 15; dd12.d1 = 16; 
  dd2.b = 50; dd2.d2 = 52; dd22.b = 60; dd22.d2 = 62;  
  s1 = b.f1(5);
  s2 = dd1.f2(20, 25);
  s3 = dd2.f2(50, 100);
  Base * aa[3];
  aa[0] = &dd1; aa[1] = &dd2; aa[2] = &b; 
  int res, k=0;
  for (k; k < 3; k++) 
  { res = aa[k]->f1(k); 
    cout << " aa[ " << k << "]->f1( " << k << ") = " 
         << res << endl;
  }
}

