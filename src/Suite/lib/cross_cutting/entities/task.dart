class Task {
  final String id;
  final String userId;
  final String name;
  final int interval;
  final int intervalTyp;
  final int duration;
  final String roomId;
  final String roomUserId;

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
}
