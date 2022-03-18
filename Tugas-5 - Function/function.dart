void main() {
  // Soal No. 1
  // Tulislah sebuah function dengan nama teriak() yang
  // mengembalikan nilai “Halo Sanbers!”

  teriak() {
    return "Halo Sanbers!";
  }

  print(teriak());

  // Soal No. 2
  // Tulislah sebuah function dengan nama kalikan()

  kalikan(int a, int b) {
    return a * b;
  }

  var num1 = 12;
  var num2 = 4;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali); // 48

  // Soal No. 3
  // Tulislah sebuah function dengan nama introduce()

  introduce(name, age, address, hobby) {
    return "Nama saya ${name}, umur saya ${age} tahun, alamat saya di ${address}, dan saya punya hobby yaitu ${hobby}!";
  }

  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  // Soal No.4
  // Tulislah sebuah function untuk memfaktorialkan angka

  factorial(int k) {
    var angka = 1;
    var faktor = 1;

    if (k <= 0) {
      return 1;
    }
    while (angka <= k) {
      faktor = faktor * angka;
      angka = angka + 1;
    }
    return faktor;
  }

  print(factorial(6));
}
