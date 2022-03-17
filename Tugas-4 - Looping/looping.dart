void main() {
  // No. 1 Looping While
  // print("LOOPING PERTAMA");
  // var i = 2;
  // while (i != 21) {
  //   if (i % 2 == 0) {
  //     print("${i} - I love coding");
  //   }
  //   i++;
  // }

  // print("LOOPING KEDUA");
  // i = 20;
  // while (i != 0) {
  //   if (i % 2 == 0) {
  //     print("${i} - I will become a mobile developer");
  //   }
  //   i--;
  // }

  // No. 2 Looping menggunakan for
  // for (var i = 1; i <= 20; i++) {
  //   if (i % 2 != 0 && i % 3 == 0) {
  //     print("${i} - I Love Coding");
  //   } else if (i % 2 == 0) {
  //     print("${i} - Berkualitas");
  //   } else if (i % 2 != 0) {
  //     print("${i} - Santai");
  //   }
  // }

  // No. 3 Membuat Persegi Panjang #
  // var p = "";
  // for (var i = 0; i < 4; i++) {
  //   for (var j = 0; j <= 7; j++) {
  //     p = p + "#";
  //   }
  //   p += "\n";
  // }
  // print(p);

  // No. 4 Membuat Tangga
  int rows = 7;
  var s = "";
  for (var i = 0; i < rows; i++) {
    for (var j = 0; j <= i; j++) {
      s = s + "#";
    }
    s += "\n";
  }
  print(s);
}
