class Student {
  late int age;
  late String name;

  Student make(int age, String name) {
    Student student = Student();
    student.age = age;
    student.name = name;
    return student;
  }
}