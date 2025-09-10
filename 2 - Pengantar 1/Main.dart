void main(List<String> args) {
  String name = "Erril";
  int age = 20;
  for (var i = age; i > 0; i--) {
    print("Hello, my name is $name. I'm $i years old.");
  }

  // null safety
  // String school;
  // print(school);

  // nullable
  String? address;
  print(address);

  // late
  late String country;
}