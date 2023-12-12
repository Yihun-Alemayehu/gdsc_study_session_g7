import 'package:flutter/material.dart';

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //listItem[0][1],
              const SizedBox(
                height: 30,
              ),
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
                    'Task Detail',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),

              Image.asset('assets/shopping-1.png'),
              const SizedBox(
                height: 10,
              ),

              const Text(
                'Title',
                style: TextStyle(
                  //color: Colors.amber[900],
                  fontSize: 20,
                  //fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                decoration: BoxDecoration(
                  //color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                        //blurRadius: 5,
                        //offset: const Offset(-5, -5),
                        color: Colors.grey.withOpacity(0.3)),
                    BoxShadow(
                        //blurRadius: 3,
                        //offset: const Offset(5, 5),
                        color: Colors.grey.withOpacity(0.3)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: const Text(
                  'UI/UX App Design',
                  style: TextStyle(
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
                  //color: Colors.amber[900],
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        //blurRadius: 5,
                        //offset: const Offset(-5, -5),
                        color: Colors.grey.withOpacity(0.2)),
                    BoxShadow(
                        //blurRadius: 3,
                        //offset: const Offset(5, 5),
                        color: Colors.grey.withOpacity(0.2)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: const Text(
                  'First I have to animate the logo and prototyping my design. It\'s very important.',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                'Deadline',
                style: TextStyle(
                  //color: Colors.amber[900],
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        //blurRadius: 5,
                        //offset: const Offset(-5, -5),
                        color: Colors.grey.withOpacity(0.2)),
                    BoxShadow(
                        //blurRadius: 3,
                        //offset: const Offset(5, 5),
                        color: Colors.grey.withOpacity(0.2)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: const Text(
                  'April 29, 2023',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
