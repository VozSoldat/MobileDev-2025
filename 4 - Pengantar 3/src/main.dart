main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("Muhammad Erril");
  names1.add("2341720183");


  names2.addAll(["Muhammad Erril", "2341720183"]);

  print(names1);
  print(names2);
}
