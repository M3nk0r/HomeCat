import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suite/cross_cutting/entities/room.dart';
import 'package:suite/injection.dart';
import 'package:suite/ui/controllers/room_detail/room_detail_cubit.dart';
import 'package:suite/ui/controllers/room_detail/room_detail_state.dart';

@RoutePage()
class RoomDetailPage extends StatelessWidget {
  final Room room;

  const RoomDetailPage({required this.room, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RoomDetailCubit>()..init(room),
      child: BlocBuilder<RoomDetailCubit, RoomDetailState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(state.room.name)),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: state.tasks.length,
                itemBuilder: (context, index) {
                  final taskWrapper = state.tasks[index];
                  return ListTile(
                    title: Text(taskWrapper.task.name),
                    subtitle: Text(taskWrapper.lastDone().toString()),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
