import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_ui/data/models/task_data.dart';

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int taskIndex = ModalRoute.of(context)!.settings.arguments as int;
    final taskData = Provider.of<TaskData>(context);
    final taskItem = taskData.tasks[taskIndex];
    return Scaffold(
      body: SafeArea(
        child: Consumer<TaskData>(
          builder: (context, value, child) {
            return Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),

                  // Title bar row
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
                      ),
                      const Text(
                        'Task Detail',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Icon(Icons.more_vert),
                    ],
                  ),

                  // Image
                  Image.asset('assets/shopping-1.png'),
                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.3)),
                        BoxShadow(color: Colors.grey.withOpacity(0.3)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Text(
                      taskItem.title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.2)),
                        BoxShadow(color: Colors.grey.withOpacity(0.2)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Text(
                      taskItem.description,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    'Deadline',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 19),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.2)),
                        BoxShadow(color: Colors.grey.withOpacity(0.2)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Text(
                      taskItem.deadline,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.amber[900],
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false)
                          .deleteTasks(taskItem);
                      Provider.of<TaskData>(context, listen: false)
                          .removeFromLocal();
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'delete Task',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
