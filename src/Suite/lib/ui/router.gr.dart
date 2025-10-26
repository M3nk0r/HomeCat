// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:suite/cross_cutting/entities/room.dart' as _i6;
import 'package:suite/ui/pages/add_task_page.dart' as _i1;
import 'package:suite/ui/pages/home_page.dart' as _i2;
import 'package:suite/ui/pages/room_detail_page.dart' as _i3;
import 'package:suite/ui/pages/room_overview_page.dart' as _i4;

/// generated route for
/// [_i1.AddTaskPage]
class AddTaskRoute extends _i5.PageRouteInfo<AddTaskRouteArgs> {
  AddTaskRoute({
    required _i6.Room room,
    _i7.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         AddTaskRoute.name,
         args: AddTaskRouteArgs(room: room, key: key),
         initialChildren: children,
       );

  static const String name = 'AddTaskRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddTaskRouteArgs>();
      return _i1.AddTaskPage(room: args.room, key: args.key);
    },
  );
}

class AddTaskRouteArgs {
  const AddTaskRouteArgs({required this.room, this.key});

  final _i6.Room room;

  final _i7.Key? key;

  @override
  String toString() {
    return 'AddTaskRouteArgs{room: $room, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddTaskRouteArgs) return false;
    return room == other.room && key == other.key;
  }

  @override
  int get hashCode => room.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.RoomDetailPage]
class RoomDetailRoute extends _i5.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    required _i6.Room room,
    _i7.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         RoomDetailRoute.name,
         args: RoomDetailRouteArgs(room: room, key: key),
         initialChildren: children,
       );

  static const String name = 'RoomDetailRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RoomDetailRouteArgs>();
      return _i3.RoomDetailPage(room: args.room, key: args.key);
    },
  );
}

class RoomDetailRouteArgs {
  const RoomDetailRouteArgs({required this.room, this.key});

  final _i6.Room room;

  final _i7.Key? key;

  @override
  String toString() {
    return 'RoomDetailRouteArgs{room: $room, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RoomDetailRouteArgs) return false;
    return room == other.room && key == other.key;
  }

  @override
  int get hashCode => room.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i4.RoomOverviewPage]
class RoomOverviewRoute extends _i5.PageRouteInfo<void> {
  const RoomOverviewRoute({List<_i5.PageRouteInfo>? children})
    : super(RoomOverviewRoute.name, initialChildren: children);

  static const String name = 'RoomOverviewRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.RoomOverviewPage();
    },
  );
}
