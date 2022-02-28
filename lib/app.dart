import 'package:clean/presentation/screens/todo_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //navigatorKey: null,
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}
