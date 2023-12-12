import 'package:flutter/material.dart';
import 'package:todo_ui/Presentation/Screen/intro.dart';
import 'package:todo_ui/Presentation/Screen/task_add.dart';
import 'package:todo_ui/Presentation/Screen/task_detail.dart';
import 'package:todo_ui/Presentation/Screen/task_list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const IntroPage(),
      '/todolist': (context) =>const  TodoListPage(),
      '/addtask': (context) => const CreateTaskPage(),
      '/taskdetail':(context) => const TaskDetailPage()
    },
    //home: const IntroPage(),
  ));
}
