import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.amber[900],
                  ),
                  const Text(
                    'Todo List',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset('assets/stickman-1.png'),
              ),
              const Text('Tasks list',
              style: TextStyle(
                
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
