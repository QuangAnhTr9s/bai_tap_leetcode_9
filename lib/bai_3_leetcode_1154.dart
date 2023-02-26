// https://leetcode.com/problems/day-of-the-year/
void main() {
  String date = "2004-03-01";
  print(dayOfYear(date));
}

int dayOfYear(String date) {
  //tạo list chứa ngày, tháng, năm được tách từ date
  List<int> listDate = date.split('-').map((e) => int.parse(e)).toList();
  //tổng số ngày trong năm
  int sum = 0;
  //tạo map chứa tổng số ngày trong năm theo từng tháng
  Map<int, int> mapDayOfYear = {
    0: 0,
    1: 31,
    2: 59,
    3: 90,
    4: 120,
    5: 151,
    6: 181,
    7: 212,
    8: 243,
    9: 273,
    10: 304,
    11: 334,
    12: 365,
  };
  //tính tổng
  sum = (mapDayOfYear[listDate[1] - 1]! + listDate[2]);
  if (listDate[1] > 2 && listDate[0] % 4 == 0) {
    //sự thay đổi chỉ cộng vào khi tính các tháng từ tháng 3 và là năm nhuận
    //năm chia hết cho 4 là năm nhuận => tháng 2 có 29 ngày
    //trường hợp đặc biệt: các năm chia hết cho 100 mà không chia hết cho 400 là năm không nhuận
    if (listDate[0] % 100 == 0 && listDate[0] % 400 != 0) {
      return sum;
    }
    return sum + 1;
  }
  return sum;
}
