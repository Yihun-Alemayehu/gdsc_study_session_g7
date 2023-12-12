import 'package:flutter/material.dart';
import 'package:todo_ui/Presentation/Screen/intro.dart';
import 'package:todo_ui/Presentation/Screen/task_list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const IntroPage(),
      '/todolist': (context) => const TodoListPage(),
    },
    //home: const IntroPage(),
  ));
}
