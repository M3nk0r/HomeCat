import 'package:suite/cross_cutting/entities/room.dart';

abstract class RoomService{
  Future<void> create(Room room);
  Future<List<Room>> read();
  Future<void> update(Room room);
  Future<void> delete(String id, String userId);
}