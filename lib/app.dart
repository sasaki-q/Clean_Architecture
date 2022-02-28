// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:clean/helper/global_context.dart';
import 'package:clean/presentation/screens/task_screen.dart';
import 'package:clean/presentation/screens/todo_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => TodoScreen(),
        '/task': (BuildContext context) => TaskScreen(),
      },
    );
  }
}
