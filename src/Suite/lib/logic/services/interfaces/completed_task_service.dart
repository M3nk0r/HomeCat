import 'package:suite/cross_cutting/entities/completed_task.dart';

abstract class CompletedTaskService{
  Future<void> create(CompletedTask completedTask);
  Future<List<CompletedTask>> read();
  Future<void> update(CompletedTask completedTask);
  Future<void> delete(String taskId, String taskUserId, DateTime done);
}