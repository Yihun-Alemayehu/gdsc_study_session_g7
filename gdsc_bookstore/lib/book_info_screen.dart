import 'package:flutter/material.dart';

class BookReview extends StatelessWidget {
  const BookReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[100],
              child: Column(
                children: [
                  Image.asset(
                    'assets/Rectangle.png',
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width,
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  const Text('Cosmos'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Book by carl segan | 2 h 30 m'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 252, 121, 14),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 252, 121, 14),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 252, 121, 14),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 252, 121, 14),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black,
                        fill: 0.2,
                        grade: 0.5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'Free',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.share,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 5,
                        height: 20,
                        color: Colors.redAccent,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Book Information',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  'Cosmos is one of the bestselling science books of all the time. In clear-eyed prose, Segan reveals a jewek-like blue world inhabited by a life from that is just... '),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 5,
                        height: 20,
                        color: Colors.redAccent,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Book Author',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  'Cosmos is one of the bestselling science books of all the time. In clear-eyed prose, Segan reveals a jewek-like blue world inhabited by a life from that is just... '),
            ),

            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'User review',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Yihun'),
                      Text('This is amazing book'),
                      Text('jan 2024'),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'Related Books',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          // color: Colors.grey,
                          // height: 100,
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset('assets/Rectangle.png'),
                              Text(
                                'Papillion Based on true story',
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            color: Colors.amber[900],
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          // color: Colors.grey,
                          // height: 100,
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset('assets/Rectangle3.png'),
                              Text(
                                'Yebedel Kassa Novel',
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            color: Colors.amber[900],
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
