# Laporan Praktikum 7

- Nama: Muhammad Erril Putra Pratidina
- NIM: 2341720183

---

## Praktikum 1: Dasar State dengan Model-View
### Langkah-Langkah

#### Langkah 1: Buat Project Baru

![](attachments/Pasted%20image%2020251217233849.png)
#### Langkah 2: Membuat model **`task.dart`**

 Di folder model, buat file bernama `task.dart` dan buat `class Task`. Class ini memiliki atribut `description` dengan tipe data String dan `complete` dengan tipe data Boolean, serta ada konstruktor. Kelas ini akan menyimpan data tugas untuk aplikasi kita. 

```dart
class Task {
  final String description;
  final bool complete;

  const Task({
    this.complete = false,
    this.description = '',
  });
}
```

#### Langkah 3: Buat file `plan.dart`

Buat file `plan.dart` di dalam folder **models**

```dart
import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({this.name = '', this.tasks = const []});

```

#### Langkah 4: Buat file `data_layer.dart`

Buat file bernama `data_layer.dart` di folder **models**.

```
export 'plan.dart';
export 'task.dart';
```

#### Langkah 5: Pindah ke file `main.dart`

```dart
import 'package:flutter/material.dart';
import './views/plan_screen.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.purple),
     home: PlanScreen(),
    );
  }
}
```

#### Langkah 6: buat **`plan_screen.dart`**


```dart
import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    // ganti ‘Namaku' dengan Nama panggilan Anda
    appBar: AppBar(title: const Text('Master Plan Erril')),
    body: _buildList(),
    floatingActionButton: _buildAddTaskButton(),
   );
  }
}
```

#### Langkah 7: buat method `_buildAddTaskButton()`

Aambah kode berikut di bawah method `build` di dalam `class _PlanScreenState`.

```dart
 Widget _buildAddTaskButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)..add(const Task()),
          );
        });
	  },
	);
}
```

#### Langkah 8: buat widget **`_buildList()`**

Kita akan buat widget berupa `List` yang dapat dilakukan scroll, yaitu `ListView.builder`. Buat widget `ListView` seperti kode berikut ini.

```dart
Widget _buildList() {
  return ListView.builder(
   itemCount: plan.tasks.length,
   itemBuilder: (context, index) =>
   _buildTaskTile(plan.tasks[index], index),
  );
}
```

#### Langkah 9: buat widget **`_buildTaskTile`**



```dart
Widget _buildTaskTile(Task task, int index) {
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
          });
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(description: text, complete: task.complete),
            );
          });
        },
      ),
    );
}
```



#### Langkah 10: Tambah Scroll Controller

Anda dapat menambah tugas sebanyak-banyaknya, menandainya jika sudah beres, dan melakukan scroll jika sudah semakin banyak isinya. Namun, ada salah satu fitur tertentu di iOS perlu kita tambahkan. Ketika keyboard tampil, Anda akan kesulitan untuk mengisi yang paling bawah. Untuk mengatasi itu, Anda dapat menggunakan `ScrollController` untuk menghapus focus dari semua `TextField` selama event scroll dilakukan. Pada file `plan_screen.dart`, tambahkan variabel scroll controller di class State tepat setelah variabel `plan`.

```
late ScrollController scrollController;
```

#### Langkah 11: Tambah Scroll Listener

Tambahkan method `initState()` setelah deklarasi variabel `scrollController` seperti kode berikut.

```
@override
void initState() {
  super.initState();
  scrollController = ScrollController()
    ..addListener(() {
      FocusScope.of(context).requestFocus(FocusNode());
    });
}
```

#### Langkah 12: Tambah controller dan keyboard behavior

Tambahkan controller dan keyboard behavior pada ListView di method `_buildList` seperti kode berikut ini.

```
return ListView.builder(
  controller: scrollController,
 keyboardDismissBehavior: Theme.of(context).platform ==
 TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
```

#### Langkah 13: Terakhir, tambah method dispose()

Terakhir, tambahkan method `dispose()` berguna ketika widget sudah tidak digunakan lagi.

```
@override
void dispose() {
  scrollController.dispose();
  super.dispose();
}
```

#### Langkah 14: Hasil

Lakukan Hot restart (**bukan** hot reload) pada aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.

![](attachments/Screen%20Recording%202025-12-18%20000825.gif)

### Tugas Praktikum

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file `README.md`! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
5. Apa kegunaan method pada Langkah 11 dan 13 dalam _lifecyle state_ ?
6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

#### Jawaban

1. [Di sini.](LAPORAN_10.md#Langkah-Langkah)
2. Kita membuat `data_layer.dart` yang berisi
	
	```dart
	export 'plan.dart';
	export 'task.dart';
	```
	
	Ini adalah cara untuk mengelompokkan referensi dependensi jadi satu. File yang memerlukan kedua package ini nanti hanya akan mengimport `data_layer.dart` saja, membuat penulisan dependency lebih pendek.
	
	```dart
	import '../models/data_layer.dart';
	```

1. Variabel `plan` itu merupakan *property*, yaitu variabel tingkat class. Lifecycle-nya mengikuti lifecycle dari class-nya, sehingga cocok untuk kasus di mana data isi variabel harus terus hidup sepanjang aplikasi, bukan pada proses method tertentu. Selain itu, method-method pada class tersebut dapat menggunakan variabel yang sama jika variabel tersebut di-cache ke bentuk property. 
	
	Variabel ini diberi `const` karena nilai intance nya tidak boleh berubah.
	
1.  ![](attachments/Screen%20Recording%202025-12-18%20000825.gif)
	
	Aplikasi ini merupakan aplikasi to-do list dengan tombol checklist untuk menandakan task yang sudah selesai.
1. Method `initState()` digunakan untuk menginisialisasi instance controller dan semua kebutuhan State pada aplikasi dimulai. Method `dispose()` digunakan untuk menghapus referensi objek yang seharusnya ikut dihapus ketika State mati/ditutup. Dengan menghapus referensi, garbage collector dart kemudian dapat menghapus instance dari objek tersebut.


## Praktikum 2: Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier

### Langkah-Langkah

Langkah-langkah praktikum. ^mebt8j

#### Langkah 1: Buat file `plan_provider.dart`

Buat folder baru `provider` di dalam folder `lib`, lalu buat file baru dengan nama `plan_provider.dart` berisi kode seperti berikut.

```dart
import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> {
  const PlanProvider({
    super.key,
    required Widget child,
    required ValueNotifier<Plan> notifier,
  }) : super(child: child, notifier: notifier);

  static ValueNotifier<Plan> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PlanProvider>()!
        .notifier!;
  }
}
```

#### Langkah 2: Edit `main.dart`

Ganti pada bagian atribut `home` dengan `PlanProvider` seperti berikut. 

```dart
return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanProvider(
        notifier: ValueNotifier<Plan>(const Plan()),
        child: const PlanScreen(),
      ),
    );
```

#### Langkah 3: Tambah method pada model `plan.dart`

Tambah dua _method_ di dalam model `class Plan` seperti kode berikut.

```dart
import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({this.name = '', this.tasks = const []});

  int get completedCount {
    return tasks.where((task) => task.complete).length;
  }

  String get completenessMessage {
    return '$completedCount out of ${tasks.length} tasks';
  }
}

```

#### Langkah 4: Pindah ke PlanScreen

Edit `PlanScreen` agar menggunakan data dari `PlanProvider`. Hapus deklarasi variabel `plan` (ini akan membuat error). Kita akan perbaiki pada langkah 5 berikut ini.

#### Langkah 5: Edit method `_buildAddTaskButton`

Tambahkan `BuildContext` sebagai parameter dan gunakan `PlanProvider` sebagai sumber datanya.

```dart
Widget _buildAddTaskButton(BuildContext context) {
  ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
  return FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: () {
      Plan currentPlan = planNotifier.value;
      planNotifier.value = Plan(
        name: currentPlan.name,
        tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
      );
    },
  );
}
```

#### Langkah 6: Edit method `_buildTaskTile`

Tambah parameter `BuildContext`, gunakan `PlanProvider` sebagai sumber data. Ganti `TextField` menjadi `TextFormField` untuk membuat inisial `data provider` menjadi lebih mudah.

```dart
Widget _buildTaskTile(Task task, int index, BuildContext context) {
  ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
  return ListTile(
    leading: Checkbox(
       value: task.complete,
       onChanged: (selected) {
         Plan currentPlan = planNotifier.value;
         planNotifier.value = Plan(
           name: currentPlan.name,
           tasks: List<Task>.from(currentPlan.tasks)
             ..[index] = Task(
               description: task.description,
               complete: selected ?? false,
             ),
         );
       }),
    title: TextFormField(
      initialValue: task.description,
      onChanged: (text) {
        Plan currentPlan = planNotifier.value;
        planNotifier.value = Plan(
          name: currentPlan.name,
          tasks: List<Task>.from(currentPlan.tasks)
            ..[index] = Task(
              description: text,
              complete: task.complete,
            ),
        );
      },
    ),
  );
}
```

#### Langkah 7: Edit `_buildList`

Sesuaikan parameter pada bagian `_buildTaskTile` seperti kode berikut.

```dart
Widget _buildList(Plan plan) {
   return ListView.builder(
     controller: scrollController,
     itemCount: plan.tasks.length,
     itemBuilder: (context, index) =>
        _buildTaskTile(plan.tasks[index], index, context),
   );
}
```

#### Langkah 8: Tetap di `class PlanScreen`

Edit method build sehingga bisa tampil progress pada bagian bawah (footer). Caranya, bungkus (wrap)

```dart
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Master Plan')),
      body: ValueListenableBuilder<Plan>(
        valueListenable: PlanProvider.of(context),
        builder: (context, plan, child) {
          return Column(
            children: [
              Expanded(child: _buildList(plan)),
              SafeArea(child: Text(plan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }
```

#### Langkah 9: Tambah widget `SafeArea`

Terakhir, tambahkan widget `SafeArea` dengan berisi `completenessMessage` pada akhir widget `Column`. Perhatikan kode berikut ini.

```dart
@override
Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text('Master Plan')),
     body: ValueListenableBuilder<Plan>(
       valueListenable: PlanProvider.of(context),
       builder: (context, plan, child) {
         return Column(
           children: [
             Expanded(child: _buildList(plan)),
             SafeArea(child: Text(plan.completenessMessage))
           ],
         );
       },
     ),
     floatingActionButton: _buildAddTaskButton(context),
   );
}
```

### Tugas Praktikum 

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file `README.md`! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Jelaskan mana yang dimaksud `InheritedWidget` pada langkah 1 tersebut! Mengapa yang digunakan `InheritedNotifier`?
3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
5. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

#### Jawaban
1. [Di sini](LAPORAN_10.md#^mebt8j)
2. `InheritedWidget` adalah widget yang dapat digunakan untuk mengubah widget-widget di dalamnya jika ia mengalami perubahan state. Namun, `InheritedNotifier` digunakan karena perubahan seperti pada tombol checklist lebih mudah jika dibuat dengan sistem seperti event listener, yang mana `notifyListener()` akan secara otomatis dipanggil saat nilai suatu state berubah.
3. Kedua method tersebut lebih spesifiknya adalah `getter`. Getter adalah property khusus yang digunakan untuk enkapsulasi logic pemanggilan suatu property public. `completedCount` memiliki logic untuk mendapatkan jumlah task yang selesai dengan filter `.where()`. `.where()` dan `.lenght` merupakan method dan property untuk objek enumerable, dalam hal ini adalah `List`. `completenessMessage` merupakan getter untuk mendapatkan teks jumlah task yang sudah selesai.
4. ![](attachments/Screen%20Recording%202025-12-18%20093314.gif)
	   
	Sekarang, kita dapat menampilkan jumlah task yang sudah selesai.