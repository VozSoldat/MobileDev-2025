# Laporan Praktikum 4

- Nama: Muhammad Erril Putra Pratidina
- NIM: 2341720183

## Praktikum 1: Data List

### Langkah 1--2

Kode tersebut menginisialisasi sebuah variabel bertipe data list. Kemudian, kode mencetak panjang list `list.length()`, list index 1 `list[1]` sebelum *reassign*, dan list index 1 `list[1]` setelah *reassign*. Terdapat pula *expression* `assert()` yang berguna untuk melempar pesan error jika nilai argumen fungsi bernilai salah.

![](attachments/Pasted%20image%2020251001225200.png)

### Langkah 3

Pertama, instansiasikan list  dengan seperti ini. 

```dart
final List list = new List.filled(5, null);
```

Kode di atas berguna untuk membuat sebuah list dengan panjang tertentu dengan nilai default yang bisa kita atur.

![](attachments/Pasted%20image%2020251001230023.png)

## Praktikum 2: Tipe Data Set

### Langkah 1--2

Variabel halogens diisi dengan nilai-nilai dalam kurung kurawal akan diinfer menjadi `Set`. 

![](attachments/Pasted%20image%2020251001230419.png)

### Langkah 3

Kode tersebut menginisialisasi tiga variabel. Variabel pertama `names1` merupakan `Set` dengan nilai elemen di dalamnya harus bertipe `String`. Variabel kedua `names2` merupakan `Set` dengan nilai elemen `String`; cara kedua selain yang pertama. Variabel ketiga `names3` di-infer menjadi `Map` karena Dart menganggap variabel dengan assignment dengan nilai kurung kurawal yang kosong sebagai `Map` jika tidak diikuti dengan pendefinisian tipe pada *Type parameter*-nya (simbol `<` + `>`).

![](attachments/Pasted%20image%2020251001230621.png)
---

Penggunaan `.add()` dan `.addAll()`. Fungsi pertama bekerja dengan menambahkan argumen ke dalam set pada bagian paling terakhir. Fungsi kedua bekerja mirip, tetapi untuk objek `Iteratable` (seperti `List`, `Set` dan lainnya).
 
![](attachments/Pasted%20image%2020251001231226.png)

## Praktikum 3: Tipe Data Map

### Langkah 1--2

Kode tersebut membuat sebuah variabel yang di-infer ke `Map`. Map adalah tipe struktur-data yang berbentuk `key`-`value`. Bentuk struktur `key`-`value` data Map sama seperti objek-objek JSON ataupun YAML.

![](attachments/Pasted%20image%2020251001231630.png)

### Langkah 3

Kode di bawah menambahkan elemen baru berupa pasangan key dan value. 

![](attachments/Pasted%20image%2020251001232454.png)
## Praktikum 4: Tipe Data List: Spread dan Control-flow Operators

### Langkah 1--2

