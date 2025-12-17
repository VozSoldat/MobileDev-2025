# Laporan Praktikum 9

- Nama: Muhammad Erril Putra Pratidina
- NIM: 2341720183

---

## Praktikum Mengambil Foto dengan Kamera

### Langkah 2 Menambahkan Dependensi

Ada tiga dependensi yang ditambahkan:
- `path`
- `camera`
- `path_provider`

![](attachments/Pasted%20image%2020251217220223.png)

### Langkah 3: Mengambil Kamera

Ambil kamera-kamera yang tersedia di perangkat. Gunakan kamera pertama `final firstCamera = cameras.first`.

```dart
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Menunggu Langkah 8...'),
        ),
      ),
    ),
  );
}
```

### Langkah 4: Buat dan Inisialisasi `CameraController`

1. Buat `StatefulWidget` dengan kelas `State` pendamping.
2. Tambahkan variabel ke kelas `State` untuk menyimpan `CameraController`.
3. Tambahkan variabel ke kelas `State` untuk menyimpan `Future` yang dikembalikan dari `CameraController.initialize()`.
4. Buat dan inisialisasi controller dalam metode `initState()`.
5. Hapus controller dalam metode `dispose()`.

```dart
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({super.key, required this.camera});
  final CameraDescription camera;
  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}
  
class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  // ...
}
```

## Langkah 5: Gunakan `CameraPreview`

Gunakan widget `CameraPreview` dari package `camera` untuk menampilkan preview foto. Anda perlu tipe objek void berupa `FutureBuilder` untuk menangani proses async.


**lib/widget/takepicture_screen.dart**

```dart
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: const Text('Take a picture - NIM Anda')),
  // You must wait until the controller is initialized before displaying the
  // camera preview. Use a FutureBuilder to display a loading spinner until the
  // controller has finished initializing.
  body: FutureBuilder<void>(
	future: _initializeControllerFuture,
	builder: (context, snapshot) {
	  if (snapshot.connectionState == ConnectionState.done) {
		// If the Future is complete, display the preview.
		return CameraPreview(_controller);
	  } else {
		// Otherwise, display a loading indicator.
		return const Center(child: CircularProgressIndicator());
	  }
	},
  ),
  //...
```

### Langkah 6: Mengambil Foto dengan CameraController

Membuat sebuah FloatingActionButton yang digunakan untuk mengambil gambar menggunakan CameraController saat pengguna mengetuk tombol.

```dart
var scaffold = Scaffold(
      appBar: AppBar(title: const Text('Take a picture - Muhammad Erril Putra Pratidina - 2341720183')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // If the picture was taken, display it on a new screen.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  // Pass the automatically generated path to
                  // the DisplayPictureScreen widget.
                  imagePath: image.path,
                ),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
    //...
```

### Langkah 7: Membuat widget baru DisplayPictureScreen

Membuat file baru pada folder widget yang berisi kode berikut.

```dart
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(title: const Text('Display the picture - 2341720183')),
      body: Image.file(File(imagePath)),
    );
    return scaffold;
  }
}
```

### Langkah 8: Mengedit main.dart

Mengedit pada file `main.dart` bagian runApp seperti kode berikut.

```dart
import 'package:kamera_flutter/widget/takepicture_screen.dart'; 

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        camera: firstCamera,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
```

### Langkah 9: Menampilkan hasil foto

Menambahkan kode seperti berikut pada bagian try / catch agar dapat menampilkan hasil foto pada `DisplayPictureScreen`.

```dart
floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // If the picture was taken, display it on a new screen.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  // Pass the automatically generated path to
                  // the DisplayPictureScreen widget.
                  imagePath: image.path,
                ),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
```

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