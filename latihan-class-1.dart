/* 1.Buatlah sebuah class bernama Kucing dengan
  atribut nama dan umur.*/

class Kucing {
  String nama;
  int umur;

  Kucing(this.nama, this.umur);
  void namaUmur() {
    print("Nama: ${this.nama}");
    print("Umur: ${this.umur}");
  }
}

void main() {
  /* 2.Buatlah sebuah objek dari class Kucing dengan
  nama kucing1 dengan nilai atribut nama adalah
  "Meong" dan umur adalah 3 tahun.*/
  Kucing kucing1 = Kucing("Meong", 3);

  /* 3.Tampilkan nilai atribut dari objek kucing1
  menggunakan method print.*/
  kucing1.namaUmur();
}
