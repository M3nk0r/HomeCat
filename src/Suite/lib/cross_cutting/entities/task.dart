import 'package:uuid/uuid.dart';

class Task {
  final String id;
  final String userId;
  final String name;
  final int interval;
  final int intervalTyp;
  final int duration;
  final String roomId;
  final String roomUserId;

  static const dbName = 'Task';

  Task({
    required this.id,
    required this.userId,
    required this.name,
    required this.interval,
    required this.intervalTyp,
    required this.duration,
    required this.roomId,
    required this.roomUserId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'userId': this.userId,
      'name': this.name,
      'interval': this.interval,
      'intervalTyp': this.intervalTyp,
      'duration': this.duration,
      'roomId': this.roomId,
      'roomUserId': this.roomUserId,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] as String,
      userId: map['userId'] as String,
      name: map['name'] as String,
      interval: map['interval'] as int,
      intervalTyp: map['intervalTyp'] as int,
      duration: map['duration'] as int,
      roomId: map['roomId'] as String,
      roomUserId: map['roomUserId'] as String,
    );
  }

  factory Task.create({
    required userId,
    required name,
    required interval,
    required intervalTyp,
    required duration,
    required roomId,
    required roomUserId,
  }){
    return Task(id: Uuid().v8(),
        userId: userId,
        name: name,
        interval: interval,
        intervalTyp: intervalTyp,
        duration: duration,
        roomId: roomId,
        roomUserId: roomUserId);
  }
}
