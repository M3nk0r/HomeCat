import 'package:uuid/uuid.dart';

class Room {
  final String id;
  final String userId;
  final String name;

  static const dbName = 'Room';

  Room({required this.id, required this.userId, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'userId': this.userId,
      'name': this.name,
    };
  }

  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      id: map['id'] as String,
      userId: map['userId'] as String,
      name: map['name'] as String,
    );
  }

  factory Room.create({required userId, required name}){
    return Room(id: Uuid().v8(), userId: userId, name: name);
  }
}
