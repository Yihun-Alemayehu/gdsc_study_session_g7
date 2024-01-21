import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class CreateTaskPage extends StatelessWidget {
  CreateTaskPage({super.key});

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dueDateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //App bar row
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
                    const Icon(Icons.more_vert),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                // Create new task title
                const Center(
                  child: Text(
                    'Create new task',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Divider(thickness: 2),
                ),
                const SizedBox(
                  height: 10,
                ),

                FormBuilder(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Main task name',
                        style: TextStyle(
                          color: Colors.amber[900],
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FormBuilderTextField(
                        name: 'main task name',
                        controller: _titleController,
                        decoration: InputDecoration(
                            hintText: 'task title',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Due date',
                        style: TextStyle(
                          color: Colors.amber[900],
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FormBuilderDateTimePicker(
                        controller: _dueDateController,
                        name: 'due date',
                        decoration: InputDecoration(
                            hintText: 'Select a due date',
                            suffixIcon: Icon(
                              Icons.date_range,
                              color: Colors.amber[900],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        format: DateFormat.yMMMMd('en_US'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // Description text
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.amber[900],
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FormBuilderTextField(
                        controller: _descriptionController,
                        name: 'add a description here',
                        decoration: InputDecoration(
                            hintText: 'add a description here',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.amber[900],
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        child: const Text(
                          'Add Task',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
