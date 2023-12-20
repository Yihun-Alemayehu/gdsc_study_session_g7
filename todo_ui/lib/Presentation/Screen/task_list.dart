import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final List listItem = [
    [
      "U",
      "UI/UX App Design",
      "April 29, 2023",
    ],
    [
      "U",
      "UI/UX App Design",
      "April 29, 2023",
    ],
    [
      "V",
      "View candidate",
      "April 29, 2023",
    ],
    [
      "F",
      "Football Drybiling",
      "April 29, 2023",
    ],
  ];
  final List colorList = [
    Colors.deepOrange,
    Colors.green,
    Colors.yellow,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //listItem[0][1],
              // const SizedBox(
              //   height: 30,
              // ),
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
                child: ListView.builder(
                  itemCount: listItem.length,
                  itemBuilder: (context, index) {
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
                            listItem[index][0],
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          title: Text(
                            listItem[index][1],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Text(
                            listItem[index][2],
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    );
                    // return Container(
                    //   margin: const EdgeInsets.all(10),
                    //   decoration: BoxDecoration(
                    //       boxShadow: [
                    //         BoxShadow(
                    //             blurRadius: 5,
                    //             offset: const Offset(-5, -5),
                    //             color: Colors.grey.withOpacity(0.2)),
                    //         BoxShadow(
                    //             //blurRadius: 3,
                    //             offset: const Offset(5, 5),
                    //             color: Colors.grey.withOpacity(0.2)),
                    //       ],
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(20)),
                    //   child: ListTile(
                    //     onTap: () {
                    //       Navigator.of(context).pushNamed('/taskdetail');
                    //     },
                    //     contentPadding: const EdgeInsets.all(10),
                    //     leading: Text(
                    //       listItem[index][0],
                    //       style: const TextStyle(
                    //         fontSize: 30,
                    //       ),
                    //     ),
                    //     title: Text(
                    //       listItem[index][1],
                    //       style: const TextStyle(
                    //         fontSize: 20,
                    //       ),
                    //     ),
                    //     trailing: Text(
                    //       listItem[index][2],
                    //       style: const TextStyle(
                    //         fontSize: 15,
                    //       ),
                    //     ),
                    //   ),
                    // );
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
