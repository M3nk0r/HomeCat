class CompletedTask{
  final String taskId;
  final String taskUserId;
  final String userId;
  final DateTime done;

  static const dbName = 'CompletedTask';

  CompletedTask({required this.taskId, required this.taskUserId, required this.userId, required this.done});

  Map<String, dynamic> toMap() {
    return {
      'taskId': taskId,
      'taskUserId': taskUserId,
      'userId': userId,
      'done': done.toIso8601String(),
    };
  }

  factory CompletedTask.fromMap(Map<String, dynamic> map) {
    return CompletedTask(
      taskId: map['taskId'] as String,
      taskUserId: map['taskUserId'] as String,
      userId: map['userId'] as String,
      done: DateTime.tryParse(map['done']) ?? DateTime(1000),
    );
  }

}