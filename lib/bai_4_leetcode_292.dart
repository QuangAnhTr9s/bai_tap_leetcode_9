// https://leetcode.com/problems/nim-game/
void main() {
  int n = 7;
  print(canWinNim(n));
}

bool canWinNim(int n) {
  // 1: thang
  // 2: thang
  // 3: thang
  // 4: thua
  // 5: danh 1 la thang
  // 6: danh 2 la thang
  // 7: danh 3 la thang
  // 8: thua
  // 9: danh 1 la thang
  // 10: danh 2 la thang
  // 11:danh 3 la thang
  // 12: thua
  // 13: danh 1 la thang
  // 14: danh 2 la thang
  // 15: danh 3 la thang

  return n % 4 != 0;
}
