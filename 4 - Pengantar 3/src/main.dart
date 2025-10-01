main() {
  var mhs1 = Map<String, String>();
  mhs1.putIfAbsent('nama', () => 'Muhammad Erril');
  mhs1.putIfAbsent('nim', () => '2341720183');


  Map gifts = Map();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Muhammad Erril';
  gifts['nim'] = '2341720183';


  var mhs2 = Map<int, String>();
  mhs2[1] = 'Muhammad Erril';
  mhs2[2] = '2341720183';


  Map nobleGases = Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  nobleGases[3] = 'Muhammad Erril';
  nobleGases[4] = '2341720183';

  print(mhs1);
  print(gifts);
  print(mhs2);
  print(nobleGases);
}
