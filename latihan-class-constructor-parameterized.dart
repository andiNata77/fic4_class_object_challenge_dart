/* 3.Buatlah constructor parameterized pada class Mahasiswa
dengan parameter nama, jurusan, dan angkatan. */

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa(this.nama, this.jurusan, this.angkatan);
}

void main() {
  // Dibawah ini menampilkan constructor parameterized
  Mahasiswa mhs = Mahasiswa("Andi Nata", "Sistem Informasi", 2019);
  print("Nama: ${mhs.nama}");
  print("Jurusan: ${mhs.jurusan}");
  print("Angkatan: ${mhs.angkatan}");
}
