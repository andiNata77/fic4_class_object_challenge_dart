/* Buatlah constructor named pada class Mahasiswa dengan
nama fromJson yang menerima parameter jsonString dan
mengembalikan objek Mahasiswa yang diinisialisasi
dengan nilai atribut dari jsonString.*/

import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa(this.nama, this.jurusan, this.angkatan);
  Mahasiswa.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
  Mahasiswa.formJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}

void main() {
  String jsonString1 =
      '{"nama" : "Andi Nata","jurusan":"Sistem Informasi","angkatan":2019}';
  Mahasiswa mhs = Mahasiswa.formJsonString(jsonString1);
  print("Mahasiswa nama: ${mhs.nama}");
  print("Mahasiswa jurusan: ${mhs.jurusan}");
  print("Mahasiswa angkatan: ${mhs.angkatan}");
}
