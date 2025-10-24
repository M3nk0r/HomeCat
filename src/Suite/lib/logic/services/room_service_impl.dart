import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/data/db_context.dart';
import 'package:suite/logic/services/interfaces/room_service.dart';

class RoomServiceImpl extends RoomService{
  final DbContext context;

  RoomServiceImpl({required this.context});

  @override
  Future<void> create(Room room) async {
    final db = await context.open();

    var map = room.toMap();
    await db.insert(Room.dbName, map);

    await db.close();
  }

  @override
  Future<void> delete(String id, String userId) async {
    final db = await context.open();

    await db.delete(Room.dbName, where: 'id = ? and userId = ?', whereArgs: [id, userId]);

    await db.close();
  }

  @override
  Future<List<Room>> read() async {
    final db = await context.open();

    final List<Map<String, Object?>> maps =
        await db.query(Room.dbName);

    await db.close();

    return [
      for (final map in maps) Room.fromMap(map),
    ];
  }

  @override
  Future<void> update(Room room) async {
    final db = await context.open();

    await db.update(Room.dbName, room.toMap(),
        where: 'id = ? and userId = ?', whereArgs: [room.id, room.userId]);

    await db.close();
  }
  
}