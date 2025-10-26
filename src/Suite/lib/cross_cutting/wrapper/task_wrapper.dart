import 'package:suite/cross_cutting/entities/completed_task.dart';
import 'package:suite/cross_cutting/entities/task.dart';

class TaskWrapper{
  final Task task;
  final List<CompletedTask> completedTasks;

  TaskWrapper({required this.task, required this.completedTasks});

  DateTime? lastDone() {
    completedTasks.sort((a, b) => b.done.compareTo(a.done));
    return completedTasks.firstOrNull?.done;
  }

}