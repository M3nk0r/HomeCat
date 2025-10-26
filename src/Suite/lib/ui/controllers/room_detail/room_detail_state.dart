import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/cross_cutting/wrapper/task_wrapper.dart';

class RoomDetailState {
  late final Room room;
  final List<TaskWrapper> tasks;

  RoomDetailState({required this.tasks});

  RoomDetailState.all({required this.room, required this.tasks});

  RoomDetailState copyWith(
      {final Room? room, final List<TaskWrapper>? tasks,}) {
    return RoomDetailState.all(
      room: room ?? this.room, tasks: tasks ?? this.tasks,);
  }


}