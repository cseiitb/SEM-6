#include <iostream>
using namespace std;
// All functions labeled as virtual

class Base
{ public:
   int b;
   virtual int f1(int a) {return b+a;}; 
   virtual int f2(int i, int j) {return i*b+j;};
   virtual int f3() { return b*b;}
};

class D1: public Base { public: int d1; 
   virtual int f1(int x) { return d1+x;};  
};

class D2: public D1{ public: int d2; 
   virtual int f2(int k, int l) {return d1+d2+k+l;}; 
};

int main()
{ int s1, s2, s3;
  s1 = sizeof(Base); s2 = sizeof(D1); s3 = sizeof(D2);
  cout << s1 << "  " << s2 << "  " << s3 << endl;
  Base b; D1 dd1, dd12; D2 dd2, dd22;
  b.b = 5; dd1.b = 10; dd1.d1 = 11; dd12.b = 15; dd12.d1 = 16; 
  dd2.b = 50; dd2.d1 = 51; dd2.d2 = 52; dd22.b = 60; 
  dd22.d1 = 61; dd22.d2 = 62;  
  s1 = b.f1(5); s2 = b.f2(10, 15);
  cout << s1 << "  " << s2 << endl;
  s1 = dd1.f1(20); s2 = dd1.f2(30, 35);
  cout << s1 << "  " << s2 << endl;
  s1 = dd2.f1(40); s2 = dd2.f2(50, 100);
  cout << s1 << "  " << s2 << endl;
  int res, k=0;
  Base * aa[5];
  aa[0] = &dd1; aa[1] = &dd2; aa[2] = &b; aa[3] = &dd12; aa[4] = &dd22;
  for ( k; k < 5; k++) 
  { res = aa[k]->f1(k); 
    cout << " aa[ " << k << "]->f1( " << k << ") = " << res << endl;
  }
  D1 * bb[4];
  bb[0] = &dd1; bb[1] = &dd12; bb[2] = &dd2; bb[3] = &dd22;
  for ( k = 0; k < 4; k++) 
  { res = bb[k]->f1(k);  
    cout << " bb[ " << k << "]->f1( " << k << ") = " << res << endl;
  };
}

