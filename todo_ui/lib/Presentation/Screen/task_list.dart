import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_ui/data/models/task_data.dart';

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.amber[900],
                    ),
                    //color: Colors.amber[900],
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
              const Text(
                'Tasks list',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Consumer<TaskData>(
                  builder: (context, value, child) {
                    return ListView.builder(
                      itemCount: value.taskCount,
                      itemBuilder: (context, index) {
                        final taskItem = value.tasks[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed('/taskdetail');
                              },
                              contentPadding: const EdgeInsets.all(15),
                              leading: Text(
                                taskItem.leadingIcon,
                                style: const TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              title: Text(
                                taskItem.title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Text(
                                taskItem.deadline,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/addtask');
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber[900],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        child: Text(
                          'Create task',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
