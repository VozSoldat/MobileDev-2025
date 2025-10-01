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

Kode ini membuat dua list. Pada list kedua, `...` digunakan untuk memasukkan argumen bernilai list pada parameter yang menerima elemen-elemen list. Simbol itu disebut *spread operator*.

![](attachments/Pasted%20image%2020251001232839.png)

### Langkah 3

Membuat list yang berisi nim dan menambahkannya ke list lain dengan spread operator.

![](attachments/Pasted%20image%2020251001233909.png)

### Langkah 4

Ketika `promoActive` bernilai true.
![](attachments/Pasted%20image%2020251001234053.png)
---

Ketika `promoActive` bernilai false. Nilai 'outlet' tidak ikut dimasukkan ke dalam list. Ini adalah ekspresi control-flow.
![](attachments/Pasted%20image%2020251001234113.png)

### Langkah 5

Jika nilai login bukan 'Manager', maka nilai 'Inventory' tidak dimasukkan ke dalam list

![](attachments/Pasted%20image%2020251001234259.png)
---

Misalnya diberi kondisi lain, selama kondisi terpenuhi, makan nilai yang ditulis pada pengondisian akan dimasukkan ke list.

![](attachments/Pasted%20image%2020251001234420.png)

### Langkah 6

Kita juga dapat memasukkan `for` sebagai pembantu operator untuk memasukkan nilai ke dalam list. Pada contoh kode, kita dapat memasukkan nilai berulang langsung di dalam kurung kotak, tanpa perlu membuat sebuah block code untuk `for`. 

![](attachments/Pasted%20image%2020251001234602.png)
## Praktikum 5: Record

### Langkah 1--2

Variabel yang di-infer ke `Record` ini mengandung nilai elemen yang berbeda-beda tipenya. Manfaat Record adalah kita bisa memasukkan banyak data dengan tipe berbeda seperti itu.

![](attachments/Pasted%20image%2020251001234950.png)

### Langkah 3

Fungsi `tukar()` bekerja dengan menerima *tuple* yang dikonversi ke Record pada parameter. Saat diterima, nilai parameter `record`  dimasukkan ke tuple a dan b. Kemudian urutan return tuple ini dibalik.

![](attachments/Pasted%20image%2020251001235529.png)

### Langkah 4

Kode ini menunjukkan cara memberi nilai sebuah Record.

![](attachments/Pasted%20image%2020251001235844.png)

### Langkah 5

![](attachments/Pasted%20image%2020251001235952.png)

![](attachments/Pasted%20image%2020251002000041.png)

Pemanggilan nilai Record dengan tanda `$` berguna untuk memanggil berdasarkan indeks. Kita juga dapat memanggil elemen Record dengan key-nya langsung.