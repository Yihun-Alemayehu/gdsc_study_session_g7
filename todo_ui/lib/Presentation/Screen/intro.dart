import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 200, 87, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            Image.asset('assets/stickman.png'),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/todolist');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
