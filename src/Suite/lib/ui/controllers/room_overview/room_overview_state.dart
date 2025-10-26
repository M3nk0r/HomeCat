import 'package:suite/cross_cutting/entities/room.dart';

class RoomOverviewState {
  final List<Room> rooms;

  RoomOverviewState({required this.rooms});

  RoomOverviewState copyWith({final List<Room>? rooms,}) {
    return RoomOverviewState(rooms: rooms ?? this.rooms,);
  }

}