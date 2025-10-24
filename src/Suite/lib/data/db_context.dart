import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:suite/data/migrations.dart';

class DbContext {
  final dbName = 'suite.db';

  Future<void> init() async {
    int currentVersion = Migrations.migrationScripts.length;
    final database = await openDatabase(join(await getDatabasesPath(), dbName),
        version: currentVersion, onCreate: (db, version) async {
          for (int i = 1; i <= currentVersion; i++) {
            await db.execute(Migrations.migrationScripts[i]!);
          }
        }, onUpgrade: (db, oldVersion, newVersion) async {
          for (int i = oldVersion + 1; i <= newVersion; i++) {
            await db.execute(Migrations.migrationScripts[i]!);
          }
        });

    database.close();
  }

  Future<Database> open() async {
    WidgetsFlutterBinding.ensureInitialized();
    return await openDatabase(join(await getDatabasesPath(), dbName));
  }
}