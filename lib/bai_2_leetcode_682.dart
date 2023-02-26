// https://leetcode.com/problems/baseball-game/description/
void main() {
  List<String> operations = ["5", "2", "C", "D", "+"];
  print(calPoints(operations));
}

int calPoints(List<String> operations) {
//tạo một list chứa điểm
  List<int> listRecord = [];

  for (int i = 0; i < operations.length; i++) {
    //check từng lệnh nhận được từ danh sách
    if (operations[i] == '+') {
      //nếu lệnh nhận được là +
      if (listRecord.isEmpty) {
        //nếu listRecord rỗng thì thêm kết quả 0
        listRecord.add(0);
      } else if (listRecord.length == 1) {
        //nếu listRecord có 1 số thì thêm số đó vào
        listRecord.add(listRecord[0]);
      } else {
        //còn lại thì kết quả là tổng 2 điểm liền trước
        listRecord.add(listRecord.last + listRecord[listRecord.length -2]);
      }
    } else if (operations[i] == 'C') {
      //nếu lệnh nhận được là C
      if (listRecord.isEmpty) {
        //nếu listRecord rỗng thì bỏ qua, tiếp tục vòng lặp
        continue;
      } else {
        //còn lại thì xóa số liền trước
        listRecord.removeLast();
      }
    }else if (operations[i] == 'D') {
      //nếu lệnh nhận được là D
      if (listRecord.isEmpty) {
        //nếu listRecord rỗng thì thêm kết quả 0
        listRecord.add(0);
      } else {
        //còn lại thì kết quả là  2* điểm liền trước
        listRecord.add(listRecord.last * 2);
      }
    }  else {
      //trường hợp cuối cùng là số nguyên, chỉ cần chuyển string -> int rồi thêm vào là được
      listRecord.add(int.parse(operations[i]));
    }

  }
  //tính tổng các điểm đã ghi được
  int sum = 0;
  for (var element in listRecord) {
    sum += element;
  }
  return sum;
}
