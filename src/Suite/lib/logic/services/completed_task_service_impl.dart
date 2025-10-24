import 'package:suite/cross_cutting/entities/completed_task.dart';
import 'package:suite/data/db_context.dart';
import 'package:suite/logic/services/interfaces/completed_task_service.dart';

class CompletedTaskServiceImpl extends CompletedTaskService {
  final DbContext context;

  CompletedTaskServiceImpl({required this.context});

  @override
  Future<void> create(CompletedTask completedTask) async {
    final db = await context.open();

    var map = completedTask.toMap();
    await db.insert(CompletedTask.dbName, map);

    await db.close();
  }

  @override
  Future<void> delete(String taskId, String taskUserId, DateTime done) async {
    final db = await context.open();

    await db.delete(CompletedTask.dbName, where: 'taskId = ? and taskUserId = ? and done = ?', whereArgs: [taskId, taskUserId, done.toIso8601String()]);

    await db.close();
  }

  @override
  Future<List<CompletedTask>> read() async {
    final db = await context.open();

    final List<Map<String, Object?>> maps =
        await db.query(CompletedTask.dbName);

    await db.close();

    return [
      for (final map in maps) CompletedTask.fromMap(map),
    ];
  }

  @override
  Future<void> update(CompletedTask completedTask) async {
    final db = await context.open();

    await db.update(CompletedTask.dbName, completedTask.toMap(),
        where: 'taskId = ? and taskUserId = ? and done = ', whereArgs: [completedTask.taskId, completedTask.taskUserId, completedTask.done.toIso8601String()]);

    await db.close();
  }

}
