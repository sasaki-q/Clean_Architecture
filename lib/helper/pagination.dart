import 'package:clean/helper/global_context.dart';
import 'package:flutter/material.dart';

class Pagination {
  final NavigatorState base = Navigator.of(globalContext);

  Future<void> pushPage({required String path}) async {
    await base.pushNamed(path);
  }
}
