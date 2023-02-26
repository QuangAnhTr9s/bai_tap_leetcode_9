// https://leetcode.com/problems/power-of-four
void main() {
  int n = -2147483648;
  print(isPowerOfFour(n));
}

bool isPowerOfFour(int n) {
  //so <=0 thi return false
  if(n<=0) return false;
  //n=1 thi return luon
  if(n == 1) return true;
  //check luy thua cua 4
  while(n>=4){
    if(n%4 == 0){
      n = n~/4;
    }
    else {
      return false;
    }
  }
  return n == 1; // 4^x/4^x =1
}
