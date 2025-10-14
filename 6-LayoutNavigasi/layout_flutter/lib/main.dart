import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding di sepanjang tepi 32 piksel
      child: Row(
        children: [
          Expanded(
            // soal 1: Column di dalam Expanded dan disejajarkan ke awal
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // soal 2: baris pertama teks dengan padding bawah 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // warna abu-abu
                  ),
                ),
              ],
            ),
          ),
          // soal 3: ikon bintang merah dan teks '41'
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(title: const Text('Muhammad Erril - 2341720183')),
        body: titleSection,
      ),
    );
  }

  
}
