// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:suite/cross_cutting/entities/room.dart' as _i5;
import 'package:suite/ui/pages/home_page.dart' as _i1;
import 'package:suite/ui/pages/room_detail_page.dart' as _i2;
import 'package:suite/ui/pages/room_overview_page.dart' as _i3;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.RoomDetailPage]
class RoomDetailRoute extends _i4.PageRouteInfo<RoomDetailRouteArgs> {
  RoomDetailRoute({
    required _i5.Room room,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         RoomDetailRoute.name,
         args: RoomDetailRouteArgs(room: room, key: key),
         initialChildren: children,
       );

  static const String name = 'RoomDetailRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RoomDetailRouteArgs>();
      return _i2.RoomDetailPage(room: args.room, key: args.key);
    },
  );
}

class RoomDetailRouteArgs {
  const RoomDetailRouteArgs({required this.room, this.key});

  final _i5.Room room;

  final _i6.Key? key;

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
/// [_i3.RoomOverviewPage]
class RoomOverviewRoute extends _i4.PageRouteInfo<void> {
  const RoomOverviewRoute({List<_i4.PageRouteInfo>? children})
    : super(RoomOverviewRoute.name, initialChildren: children);

  static const String name = 'RoomOverviewRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.RoomOverviewPage();
    },
  );
}
