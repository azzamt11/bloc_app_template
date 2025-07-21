import 'package:hive_flutter/hive_flutter.dart' show Box, Hive;
import 'package:bloc_app_template/repositories/cache/hive/models/hive_map.dart';

abstract class HiveBox {
  const HiveBox({required this.name, this.path});

  final String? path;
  final String name;

  Future<Box<HiveMap>> openBox({String? name}) =>
      Hive.openBox<HiveMap>(name ?? this.name, path: path);
}