/* 1.Buatlah sebuah class bernama Mahasiswa dengan atribut
nama, jurusan, dan angkatan.*/

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

// 2.Buatlah constructor default pada class Mahasiswa.
  Mahasiswa() {
    print("Ini adalah Konstruktor Default");
  }
}

void main() {
  Mahasiswa mhs = Mahasiswa();
}
