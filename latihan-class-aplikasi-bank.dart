// 1.Buatlah sebuah class bernama Nasabah dengan atribut nama, alamat, dan saldo.
class Nasabah {
  String? nama;
  String? alamat;
  double saldo;

/* 2.Buatlah constructor parameterized pada class Nasabah dengan parameter nama
dan alamat, dan memberikan nilai awal saldo adalah 0.*/
  Nasabah(this.nama, this.alamat, {this.saldo = 0});

/* 3.Buatlah method simpan pada class Nasabah yang menerima parameter jumlah dan
menambahkan jumlah ke saldo.*/
  void jmlSaldo(double saldoAwal) {
    saldo = saldoAwal;
  }

/* 4.Buatlah method ambil pada class Nasabah yang menerima parameter jumlah dan
mengurangi jumlah dari saldo.*/
  void simpan(double jumlah) {
    saldo = saldo + jumlah;
  }

  void ambil(double jumlah) {
    if (jumlah <= saldo) {
      saldo = saldo - jumlah;
    } else {
      print("Maaf saldo tidak mencukupi.");
    }
  }
}

void main() {
/* 5.Buatlah objek nasabah1 dan nasabah2 dari class Nasabah dengan nilai atribut
masing-masing.*/
  Nasabah nasabah1 = Nasabah("Agus", "Jalan Sudirman No. 123", saldo: 200000);
  Nasabah nasabah2 = Nasabah("Fatur", "Jalan Binatro No. 321", saldo: 500000);

/* 6.Lakukan beberapa transaksi dengan method simpan dan ambil pada objek
nasabah1 dan nasabah2.*/
/* 7.Tampilkan nilai saldo terakhir dari objek nasabah1 dan nasabah2 menggunakan
method print. */
  nasabah1.ambil(150000); //output 200000 - 150000 = 50000
  print(nasabah1.saldo);
  nasabah1.ambil(250000);
  print(nasabah1
      .saldo); //output Maaf saldo tidak mencukupi karena saldo awal hanya 200000.
  nasabah1.simpan(200000);
  print(nasabah1.saldo); //output menjadi 250000 karena sisa 50000+200000

  //nasabah2
  nasabah2.ambil(150000);
  print(nasabah2.saldo); //output 500000 - 150000 = 350000
  nasabah2.ambil(550000);
  print(nasabah2
      .saldo); //output Maaf saldo tidak mencukupi karena saldo awal hanya 500000.
  nasabah2.simpan(200000);
  print(nasabah2.saldo); //output menjadi 550000 karena sisa 350000 + 200000
}
