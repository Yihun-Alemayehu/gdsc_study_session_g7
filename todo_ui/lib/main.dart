import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_ui/Presentation/Screen/intro.dart';
import 'package:todo_ui/Presentation/Screen/task_add.dart';
import 'package:todo_ui/Presentation/Screen/task_detail.dart';
import 'package:todo_ui/Presentation/Screen/task_list.dart';
import 'package:todo_ui/data/models/task_data.dart';

void main() {
  runApp(ChangeNotifierProvider<TaskData>(
    create: (context) => TaskData(),
    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const IntroPage(),
          '/todolist': (context) => TodoListPage(),
          '/addtask': (context) => CreateTaskPage(),
          '/taskdetail': (context) => TaskDetailPage()
        },
        //home: const IntroPage(),
      );
    },
  ));
}
