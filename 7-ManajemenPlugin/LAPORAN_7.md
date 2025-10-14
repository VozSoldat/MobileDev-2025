# Laporan Praktikum 7

- Nama: Muhammad Erril Putra Pratidina
- NIM: 2341720183

## Praktikum Menerapkan Plugin
...
**Langkah 4**

```dart
return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
);
```

Pesan error:

![](attachments/Pasted%20image%2020251014155427.png)

Perbaikan:

![](attachments/Pasted%20image%2020251014155715.png)

Alasan kode error adalah karena package tempat `AutoSizeText` belum di-import dan variable `text` belum didefinisikan.

![](attachments/Pasted%20image%2020251014160440.png)


**Hasil Run**

![](attachments/Pasted%20image%2020251014160509.png)

## Tugas Praktikum
### Soal
1. Selesaikan Praktikum tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot hasil pekerjaan beserta penjelasannya di file `README.md`!
2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!
3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!
4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin `auto_size_text` berdasarkan tautan pada dokumentasi [ini](https://pub.dev/documentation/auto_size_text/latest/) !
6. Kumpulkan laporan praktikum Anda berupa link repository GitHub kepada dosen!

### Jawaban
1. [LAPORAN_7](LAPORAN_7.md)
2. Maksud dari langkah 2 adalah penambahan plugin pada project. Dengan kode tersebut, kita menambahkan plugin `auto_size_text` ke dalam project.
3. Langkah 5 berguna untuk memperbaiki erro akibat variabel `text` yang belum didefinisikan, padahal hendak dimasukkan pada parameter constructor `AutoSizeText`.
4. Kedua `Container` berfungsi sama, yakni untuk membungkus widget teks.
	- `Container` pertama menggunakan widget kustom (`RedTextWidget`) dengan lebar kecil dan latar kuning.
	- `Container` kedua menggunakan widget teks bawaan (`Text`) dengan lebar lebih besar dan latar hijau.
5. -
	1. Parameter pertama `data: text`: isi string dari data teks yang mau ditunjukkan.
	2. Parameter kedua `style: ` : untuk menetapkan gaya awal teks, seperti warna (`color`), ukuran font dasar (`fontSize`), jenis font, dsb.
	3.  Parameter ketiga `maxLines: ` : Menetapkan jumlah baris maksimum untuk teks.
	4. Parameter keempat `overflow: ` : Menentukan bagaimana teks yang berlebih ditampilkan. `TextOverflow.ellipsis` berarti teks yang berlebih akan dipotong dan digantikan dengan elipsis (...).
6. [LAPORAN_7](LAPORAN_7.md)