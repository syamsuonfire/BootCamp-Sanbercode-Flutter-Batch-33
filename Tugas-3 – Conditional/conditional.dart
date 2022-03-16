import 'dart:io';

void main() {
  // 1. Ternary operator

  // print("Apakah anda ingin menginstal aplikasi ini? (y/n)");

  // String jawaban = stdin.readLineSync()!;

  // jawaban == "y"
  //     ? print("Anda akan menginstall aplikasi dart")
  //     : print("aborted");

  // 2. If-else if dan else

  // print("Untuk memulai game ini, kamu harus mengisi nama dan peran");
  // stdout.write("Nama kamu? ");
  // String nama = stdin.readLineSync()!;

  // stdout.write("Pilih peranmu untuk memulai game ");
  // String peran = stdin.readLineSync()!;

  // String? hasil;

  // var pembuka = "Selamat datang di Dunia Werewolf";

  // if ((nama == "") & (peran == "")) {
  //   hasil = "Nama harus diisi!";
  //   print(hasil);
  // } else if (nama != "") {
  //   if (peran == "") {
  //     hasil = "Halo " + nama + ", Pilih peranmu untuk memulai game!";
  //     print(hasil);
  //   } else if (peran == "Penyihir" || peran == "penyihir") {
  //     hasil =
  //         "Hallo Penyihir ${nama}, kamu dapat melihat siapa yang menjadi Werewolf!";
  //     print("${pembuka}, ${nama}!");
  //     print(hasil);
  //   } else if (peran == "Guard" || peran == "guard") {
  //     hasil =
  //         "Hallo Werewolf ${nama}, kamu akan membantu melindungi temanmu dari serangan werewolf.";
  //     print("${pembuka}, ${nama}!");
  //     print(hasil);
  //   } else if (peran == "Werewolf" || peran == "werewolf") {
  //     hasil = "Hallo Werewolf ${nama}, Kamu akan memakan mangsa setiap malam!";
  //     print("${pembuka}, ${nama}!");
  //     print(hasil);
  //   } else {
  //     hasil = "Engga ada peran yang kamu pilih";
  //     print(hasil);
  //   }
  // }

  // print("Hari ini hari apa?");
  // String hari = stdin.readLineSync()!.toLowerCase();

  // switch (hari) {
  //   case "senin":
  //     print(
  //         "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
  //     break;
  //   case "selasa":
  //     print(
  //         "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
  //     break;
  //   case "rabu":
  //     print(
  //         "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
  //     break;
  //   case "kamis":
  //     print(
  //         "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
  //     break;
  //   case "jumat":
  //     print("Hidup tak selamanya tentang pacar.");
  //     break;
  //   case "sabtu":
  //     print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
  //     break;
  //   case "minggu":
  //     print(
  //         "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
  //     break;
  //   default:
  // }

  // 4. Switch Case (Hari, Bulan, Tahun)

  var tanggal = 15;
  var bulan = 2;
  var tahun = 1997;
  String? output;

  switch (tanggal) {
    case 15:
      {
        output = 15.toString();
        break;
      }
    case 16:
      {
        output = 16.toString();
        break;
      }
    case 17:
      {
        output = 17.toString();
        break;
      }
    case 18:
      {
        output = 18.toString();
        break;
      }
    default:
      {
        break;
      }
  }

  switch (bulan) {
    case 1:
      {
        output = "${output} Januari";
        break;
      }
    case 2:
      {
        output = "${output} Februari";
        break;
      }
    case 3:
      {
        output = "${output} Maret";
        break;
      }
    case 4:
      {
        output = "${output} April";
        break;
      }
    default:
      {
        break;
      }
  }

  switch (tahun) {
    case 1996:
      {
        output = "${output} 1996";
        break;
      }
    case 1997:
      {
        output = "${output} 1997";
        break;
      }
    case 1998:
      {
        output = "${output} 1998";
        break;
      }
    case 1999:
      {
        output = "${output} 1999";
        break;
      }
    default:
      {
        break;
      }
  }

  print(output);
}
