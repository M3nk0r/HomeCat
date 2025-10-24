class CompletedTask{
  final String taskId;
  final String taskUserId;
  final String userid;
  final DateTime done;

  static const dbName = 'CompletedTask';

  CompletedTask({required this.taskId, required this.taskUserId, required this.userid, required this.done});

  Map<String, dynamic> toMap() {
    return {
      'taskId': taskId,
      'taskUserId': taskUserId,
      'userid': userid,
      'done': done.toIso8601String(),
    };
  }

  factory CompletedTask.fromMap(Map<String, dynamic> map) {
    return CompletedTask(
      taskId: map['taskId'] as String,
      taskUserId: map['taskUserId'] as String,
      userid: map['userid'] as String,
      done: map['done'] as DateTime,
    );
  }

}