// Soal No.1 Range
range(startNumNum, finishNumNum) {
  List<int> numbers = [];
  if (startNumNum > finishNumNum) {
    for (int i = startNumNum; i >= finishNumNum; i--) {
      numbers.add(i);
    }
  } else {
    for (int i = startNumNum; i <= finishNumNum; i++) {
      numbers.add(i);
    }
  }

  return numbers;
}

// Soal No. 2 Range with Step
rangeWithStep(startNum, finishNum, int step) {
  List<int> numbers = [];
  if (startNum > finishNum) {
    for (int i = startNum; i >= finishNum; i -= step) {
      numbers.add(i);
    }
  } else {
    for (int i = startNum; i <= finishNum; i += step) {
      numbers.add(i);
    }
  }

  return numbers;
}

// Soal No. 3 List Multidimensi
dataHandling(List input) {
  for (int i = 0; i < input.length; i++) {
    print('Nomor ID: ${input[i][0]}');
    print('Nama Lengkap: ${input[i][1]}');
    print('TTL: ${input[i][2]}  ${input[i][3]}');
    print('Hobi: ${input[i][4]}');
    print('\n');
  }
}

/// Soal No. 4 Balik Kata
balikKata(word) {
  String reversed = '';

  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }

  return reversed;
}

void main() {
  // Jawaban Soal 1
  print(range(1, 10));
  print(range(1, 18));

  // Jawaban Soal 2
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));

  // Jawaban Soal 3
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Sanjaya", "Martapura", "6/4/1970", "Berkebun"],
  ];
  dataHandling(input);

  // Jawaban Soal 4
  print(balikKata("Kasur"));
  print(balikKata("SanberCode"));
  print(balikKata("Haji"));
  print(balikKata("racecar"));
  print(balikKata("Sanbers"));
}
