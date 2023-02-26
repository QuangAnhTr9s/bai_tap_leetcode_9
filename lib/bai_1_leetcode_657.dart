// https://leetcode.com/problems/robot-return-to-origin/description/
void main() {
  String moves = "RRDD";
  print(judgeCircle(moves));
}

bool judgeCircle(String moves) {
//tạo một list chứa các các bước đi
  List<String> listMoves = moves.split('');
//tạo 2 biến chỉ tung độ và hoành độ
  int x = 0;
  int y = 0;
//check từng bước đi, cứ lên thì y+1, xuống thì y-1, phải thì x+1, trái thì x-1
  for (var element in listMoves) {
    switch (element) {
      case 'R':
        x++;
        break;
      case 'L':
        x--;
        break;
      case 'U':
        y++;
        break;
      case 'D':
        y--;
        break;
    }
  }
  return x == 0 && y == 0;
}
