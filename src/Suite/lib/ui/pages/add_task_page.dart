import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:suite/cross_cutting/entities/room.dart';

@RoutePage()
class AddTaskPage extends StatelessWidget {
  final Room room;
  const AddTaskPage({required this.room, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add task'),),
    );
  }
}
