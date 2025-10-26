import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/cross_cutting/enums/interval_typ.dart';

class AddTaskState {
  late final Room room;
  final String name;
  final IntervalTyp intervalTyp;
  final int interval;
  final int duration;

  AddTaskState({
    required this.name,
    required this.intervalTyp,
    required this.interval,
    required this.duration
  });

  AddTaskState.all({
    required this.room,
    required this.name,
    required this.intervalTyp,
    required this.interval,
    required this.duration
  });

  AddTaskState copyWith({
    final Room? room,
    final String? name,
    final IntervalTyp? intervalTyp,
    final int? interval,
    final int? duration
  }) {
    return AddTaskState.all(
      room: room ?? this.room,
      name: name ?? this.name,
      intervalTyp: intervalTyp ?? this.intervalTyp,
      interval: interval ?? this.interval,
      duration: duration ?? this.duration
    );
  }
}
