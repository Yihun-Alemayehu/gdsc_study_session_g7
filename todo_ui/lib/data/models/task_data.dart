import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_ui/data/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      title: 'UI/UX app design',
      leadingIcon: 'U',
      description:
          'First, I have to animate the logo and prototyping my design. It\'s very important',
      deadline: 'April 29, 2023',
    ),
    Task(
      title: 'View candidate',
      leadingIcon: 'V',
      description:
          'First, I have to animate the logo and prototyping my design. It\'s very important',
      deadline: 'April 29, 2023',
    ),
    Task(
      title: 'Football Drybling',
      leadingIcon: 'F',
      description:
          'First, I have to animate the logo and prototyping my design. It\'s very important',
      deadline: 'April 29, 2023',
    ),
  ];

  int get taskCount{
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks); 
  }

  void addTasks(Task task){
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTasks(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
