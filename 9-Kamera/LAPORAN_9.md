# Laporan Praktikum 9

- Nama: Muhammad Erril Putra Pratidina
- NIM: 2341720183

---

## Praktikum Mengambil Foto dengan Kamera

![](attachments/Pasted%20image%2020251217212327.png)

## Praktikum Photo Filter Carousel

![](attachments/Pasted%20image%2020251217212700.png)

## Tugas Praktikum

1. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!
2. Jelaskan maksud `void async` pada praktikum 1?
3. Jelaskan fungsi dari anotasi `@immutable` dan `@override` ?
4. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

### Jawaban

1. Hasil gabungan kamera dan *carousel*.
	
	![](attachments/Pasted%20image%2020251217214606.jpg)

2. `void async` pada praktikum 1:
	1. `void` merupakan tipe return suatu method yang berarti method tidak mengembalikan apapun
	2. `async` merupakan expression untuk menyatakan bahwa suatu method berjalan secara asynchronous. Pada kasus praktikum, method dibuat asynchronous karena ia harus menunggu respons dari perangkat kamera, yang mungkin lama waktu respons lebih kama dari kecepatan proses *thread*.

3. `@immutable` dan `@override`
	1. `@immutable` adalah expression pada class untuk membuat instance dari class tersebut (objek) tidak boleh berubah datanya (immutable).
	2. `@override` adalah expression pada method untuk melakukan `method overriding`, yakni mengganti/menimpa implementasi sebuah method yang sebelumnya telah didefinisikan di superclass.