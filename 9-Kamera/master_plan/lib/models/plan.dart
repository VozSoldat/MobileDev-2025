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
