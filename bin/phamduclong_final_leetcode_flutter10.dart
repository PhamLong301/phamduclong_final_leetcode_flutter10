void main() {
  print('========================================');
  print('Bài 1');
  List<List<int>> input = [
    [2, 3, 5],
    [7, 10, 13],
    [17, 19, 0]
  ];
  print(exercise1(input));
  List<List<int>> input2 = [
    [2, 3, 5],
    [7, 10, 13],
  ];
  print(exercise1(input2));
  List<List<int>> input3 = [
    [2, 3, 5],
    [7, 11, 13],
    [17, 19, 23]
  ];
  print(exercise1(input3));
  print('========================================');
  print('Bài 2');
  List<int> listInput = [1, 2, 3, 4, 5];
  print(exercise2(listInput));
  print('----');
  List<int> listInput2 = [2, 4, 6, 8];
  print(exercise2(listInput2));
  print('========================================');
  print('Bài 3');
  List<int> doCaoCay = [1, 3, 3, 4, 1];
  print(exercise3(doCaoCay));
  List<int> doCaoCay2 = [1, 1, 1, 1];
  print(exercise3(doCaoCay2));
  print('========================================');
  print('Bài 4');
  int tgHienTai = 19;
  int tgConLai = 0;
  print(exercise4(tgHienTai, tgConLai));
  int tgHienTai2 = 9;
  int tgConLai2 = 12;
  print(exercise4(tgHienTai2, tgConLai2));
  print('========================================');
  print('Bài 5');
  int limit = 5;
  List<int> listPeople = [3, 5, 4, 2];
  print(exercise5(listPeople, limit));
  int limit2 = 8;
  List<int> listPeople2 = [3, 1, 4, 2];
  print(exercise5(listPeople2, limit2));
  print('========================================');
}

//Exercise 1
bool kiemTraSoNguye(int num) {
  if (num <= 1) return false;
  if (num == 2) return true;
  if (num % 2 == 0) return false;
  for (int i = 3; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

int tongChanTrenDuongCheo(List<List<int>> input) {
  int sum = 0;
  int listInput =
      input.length < input[0].length ? input.length : input[0].length;
  for (int i = 0; i < listInput; i++) {
    if (input[i][i] % 2 == 0) {
      sum += input[i][i];
    }
  }

  return sum;
}

bool kiemTraCoDuongCheo(List<List<int>> input) {
  return input.length == input[0].length;
}

int giaTriDuongGach(List<List<int>> input) {
  int n = input.length;
  return input[n ~/ 2][n ~/ 2];
}

String exercise1(List<List<int>> input) {
  String result = '';
  if (kiemTraCoDuongCheo(input)) {
    int num = giaTriDuongGach(input);
    if (kiemTraSoNguye(num)) {
      result = 'Giao điểm đường chéo là số nguyên: $num';
    } else {
      int sum = tongChanTrenDuongCheo(input);
      result = 'Tổng các số chẵn trên đường chéo là: $sum';
    }
  } else {
    result = 'Không có đường chéo nào cả';
  }
  return result;
}

//Exercise 2
int demSoChan(List<int> input) {
  int soLe = 0;
  for (int num in input) {
    if (num % 2 == 0) {
      soLe++;
    }
  }
  return soLe;
}

int demSoLe(List<int> input) {
  int soLe = 0;
  for (int num in input) {
    if (num % 2 != 0) {
      soLe++;
    }
  }
  return soLe;
}

int exercise2(List<int> listInput) {
  int soChan = demSoChan(listInput);
  int soLe = demSoLe(listInput);

  return soChan < soLe ? soChan : soLe;
}

//Exercise 3

int exercise3(List<int> doCaoCay) {
  if (doCaoCay.isEmpty) return 0;
  int caoNhat = doCaoCay[0];
  int thapNhat = doCaoCay[0];
  for (int chieuCao in doCaoCay) {
    if (chieuCao > caoNhat) {
      caoNhat = chieuCao;
    }
    if (chieuCao < thapNhat) {
      thapNhat = chieuCao;
    }
  }
  int cayCao = 0;
  int cayThap = 0;
  for (int chieuCao in doCaoCay) {
    if (chieuCao == caoNhat) {
      cayCao++;
    }
    if (chieuCao == thapNhat) {
      cayThap++;
    }
  }
  if (caoNhat == thapNhat) {
    return cayCao;
  }
  return cayCao + cayThap;
}

//Exercise 4

int exercise4(int tgHienTai, int tgConLai){
  int tgBatDau = tgHienTai + tgConLai;
  if(tgBatDau >= 24){
    tgBatDau -= 24;
  }
  return tgBatDau;
}

//Exercise 5
int exercise5(List<int> listPeople, int limit){
  listPeople.sort();
  int t = 0;
  int p = listPeople.length -1;
  int thuyen = 0;

  while(t <= p){
    if(listPeople[t] + listPeople[p] <= limit){
      t++;
    }
    p--;
    thuyen++;
  }
  return thuyen;
}