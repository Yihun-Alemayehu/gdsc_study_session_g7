import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_ui/Presentation/Screen/intro.dart';
import 'package:todo_ui/Presentation/Screen/task_add.dart';
import 'package:todo_ui/Presentation/Screen/task_detail.dart';
import 'package:todo_ui/Presentation/Screen/task_list.dart';
import 'package:todo_ui/data/models/task_data.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initSharedPreferences();
  // await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider<TaskData>(
    create: (context) => TaskData()..loadFromLocal(),
    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const IntroPage(),
          '/todolist': (context) => const TodoListPage(),
          '/addtask': (context) => CreateTaskPage(),
          '/taskdetail': (context) => const TaskDetailPage()
        },
      );
    },
  ));
}

Future<void> initSharedPreferences()async {
  await SharedPreferences.getInstance();
}
