void main() {
  // praktikum1();
  // praktikum2();
  // praktikum3();
  tugas(201);
}

void praktikum1() {
  String test = "test ";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test 2 again");

  // String test = "true";
  // if (test == "true") {
  //   print("Kebenaran");
  // }
}

void praktikum2() {
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }

  // counter = 0;
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}

void praktikum3() {
  for (var index = 10; index < 27; index++) {
    if (index == 21)
      break;
    else if (index > 1 && index < 7)
      continue;
    print(index);
  }
}

void tugas(int upperCeiling) {
  for (int i = 2; i <= upperCeiling; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
