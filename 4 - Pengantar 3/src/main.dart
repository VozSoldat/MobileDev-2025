main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  int pertama = 9;
  int kedua = 10;

  var hasil = tukar((pertama, kedua));
  print(hasil);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Erril', 2341720183);
  print(mahasiswa);

  var mahasiswa2 = ('Erril', a: 2341720183, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
