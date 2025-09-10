# Laporan Praktikum Hari III

## Praktikum 1

### Langkah 1 --2

![](attachments/Pasted%20image%2020250910141614.png)

Langkah tersebut mengandung error, yaitu adanya penulisan `if` dan `else` yang tidak sesuai. Dart merupakan bahasa yang *case-sensitive*, sehingga perbedaan pada kapitalisasi berpengaruh pada kesesuaian sintaksis.

Solusi yang dilakukan yaitu mengganti `If` menjadi `if` dan `Else` menjadi `else`.

### Langkah 3

![](attachments/Pasted%20image%2020250910141850.png)

Langkah tersebut mengandung error karena terdapat definisi variabel `test` lebih dari sekali. Definisi suatu variabel hanya dapat dilakukan satu kali. Jika ditulis demikian, maka compiler akan menganggap ada dua variabel berbeda yang memiliki nama yang sama.

Solusi yang diambil yaitu menghapus  `String`, sehingga kode menjadi operasi *assignment* nilai biasa.

## Praktikum 2

### Langkah 1--2

![](attachments/Pasted%20image%2020250910142047.png)

Langkah di atas mengembalikan error karena `counter` yang digunakan oleh `while` tidak didefinisikan sebelumnya. Selain pendefinisian, suatu variabel yang dibaca dalam suatu operasi perlu memerlukan nilai, sehingga variabel tersebut perlu juga diberi nilai awal (inisialisasi).

```Dart
int counter = 0;
```

### Langkah 3 

![](attachments/Pasted%20image%2020250910142550.png)

Tidak terjadi error ketika kode ditulis demikian. Hanya saja, kode tidak berjalan dari 0 lagi karena `counter` tidak diberi nilai 0 lagi.

## Praktikum 3

### Langkah 1--2

![](attachments/Pasted%20image%2020250910143358.png)

Kode tersebut mengembalikan error karena kesalahan penulisan argumen definisi indeks dalam `for`. Argumen harus berformat `int <nama indeks> = <nilai awal>`. Proses iterasi dengan indeks harus menggunakan `int` sebagai tipe data `counter`-nya. Kemudian, nama variabel sebaiknya ditulis dengan huruf kecil.

### Langkah 3

![](attachments/Pasted%20image%2020250910143746.png)

Kode tersebut memberikan `break` dan `continue` di dalam perulangan.

- `break` -> digunakan untuk menghentikan perulangan sepenuhnya.
- `continue` -> digunakan untuk menghentikan iterasi sekarang dan lanjut ke iterasi berikutnya sebelum saatnya


## Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!
2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!

