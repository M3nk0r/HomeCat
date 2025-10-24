import 'package:suite/cross_cutting/entities/task.dart';

abstract class TaskService{
  Future<void> create(Task task);
  Future<List<Task>> read();
  Future<void> update(Task task);
  Future<void> delete(String id, String userId);
}