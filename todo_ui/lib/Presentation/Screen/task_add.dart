import 'package:flutter/material.dart';

class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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

              //Task name title
              Text(
                'Main task name',
                style: TextStyle(
                  color: Colors.amber[900],
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              //Task name card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(16),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 16, 110, 16),
                  child: Text(
                    'UI/UX App Design',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )

              // Task name Container
              // Container(
              //   height: 80,
              //   width: MediaQuery.of(context).size.width,
              //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              //   decoration: BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(
              //           blurRadius: 5,
              //           offset: const Offset(-5, -5),
              //           color: Colors.grey.withOpacity(0.2)),
              //       BoxShadow(
              //           //blurRadius: 3,
              //           offset: const Offset(5, 5),
              //           color: Colors.grey.withOpacity(0.2)),
              //     ],
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.white,
              //   ),
              //   child: const Text(
              //     'UI/UX App Design',
              //     style: TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // )
              ,
              const SizedBox(
                height: 10,
              ),

              //Due date text
              Text(
                'Due date',
                style: TextStyle(
                  color: Colors.amber[900],
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              //Due date Card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Text(
                        'April 29, 2023 12:30 AM ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.calendar_month,
                        color: Colors.amber[900],
                      )
                    ],
                  ),
                ),
              ),

              //Due date Container
              // Container(
              //   height: 80,
              //   width: MediaQuery.of(context).size.width,
              //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              //   decoration: BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(
              //           blurRadius: 5,
              //           offset: const Offset(-5, -5),
              //           color: Colors.grey.withOpacity(0.2)),
              //       BoxShadow(
              //           //blurRadius: 3,
              //           offset: const Offset(5, 5),
              //           color: Colors.grey.withOpacity(0.2)),
              //     ],
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.white,
              //   ),
              //   child: Row(
              //     children: [
              //       const Text(
              //         'April 29, 2023 12:30 AM ',
              //         style: TextStyle(
              //           fontSize: 25,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       Expanded(child: Container()),
              //       Icon(
              //         Icons.calendar_month,
              //         color: Colors.amber[900],
              //       )
              //     ],
              //   ),
              // ),
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

              // Description Card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(16),
                child: const Padding(
                  padding: EdgeInsets.all(17),
                  child: Text(
                    'First I have to animate the logo and later prototyping my design. It\'s very important.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              //Description Container
              // Container(
              //   height: 80,
              //   width: MediaQuery.of(context).size.width,
              //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20, vertical: 19),
              //   decoration: BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(
              //           blurRadius: 5,
              //           offset: const Offset(-5, -5),
              //           color: Colors.grey.withOpacity(0.2)),
              //       BoxShadow(
              //           //blurRadius: 3,
              //           offset: const Offset(5, 5),
              //           color: Colors.grey.withOpacity(0.2)),
              //     ],
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.white,
              //   ),
              //   child: const Text(
              //     'First I have to animate the logo and later prototyping my design. It\'s very important.',
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),

              const SizedBox(
                height: 30,
              ),

              // Add task Button
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/todolist');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber[900],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                      child: Text(
                        'Add task',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
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
