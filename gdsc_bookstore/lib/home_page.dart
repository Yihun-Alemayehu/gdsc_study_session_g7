import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'GDSC BOOKSTORE',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        leading: Image.asset('assets/menu.png'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.76,
                    child: const Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Looking for...',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //color: Colors.blueAccent,
                      child: Image.asset('assets/Filter.png'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade900,
                        Colors.lightBlue.shade500,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Spacer(),
                            Text(
                              'sep 23, 2023',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.pause,
                            color: Colors.white,
                          ),
                          Text(
                            'Today a reader ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Icon(
                            Icons.pause,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            'tomorrow a ',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            'LEADER',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              letterSpacing: 3,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/language.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/Path.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/share.png'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                        labelPadding: const EdgeInsets.all(8),
                        pressElevation: 0,
                        backgroundColor: Colors.grey[200],
                        avatar: Image.asset('assets/healthcare.png'),
                        label: const Text(
                          'Health',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        selected: isSelected1,
                        selectedColor: Colors.amber[900],
                        onSelected: (value) {
                          setState(() {
                            isSelected1 = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                        labelPadding: const EdgeInsets.all(8),
                        pressElevation: 0,
                        backgroundColor: Colors.grey[200],
                        avatar: Image.asset('assets/microscope.png'),
                        label: const Text(
                          'Science',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        selected: isSelected2,
                        selectedColor: Colors.amber[900],
                        onSelected: (value) {
                          setState(() {
                            isSelected2 = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                        labelPadding: const EdgeInsets.all(8),
                        pressElevation: 0,
                        backgroundColor: Colors.grey[200],
                        avatar: Image.asset('assets/history-book.png'),
                        label: const Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        selected: isSelected3,
                        selectedColor: Colors.amber[900],
                        onSelected: (value) {
                          setState(() {
                            isSelected3 = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                        labelPadding: const EdgeInsets.all(8),
                        pressElevation: 0,
                        backgroundColor: Colors.grey[200],
                        avatar: Image.asset('assets/cpu.png'),
                        label: const Text(
                          'Technology',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        selected: isSelected4,
                        selectedColor: Colors.amber[900],
                        onSelected: (value) {
                          setState(() {
                            isSelected4 = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                        labelPadding: const EdgeInsets.all(8),
                        pressElevation: 0,
                        backgroundColor: Colors.grey[200],
                        avatar: Image.asset('assets/life.png'),
                        label: const Text(
                          'Philosophy',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        selected: isSelected5,
                        selectedColor: Colors.amber[900],
                        onSelected: (value) {
                          setState(() {
                            isSelected5 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Recommendation',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
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
                            width: 110,
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
                            width: 110,
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            // color: Colors.grey,
                            // height: 100,
                            width: 110,
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            // color: Colors.grey,
                            // height: 100,
                            width: 110,
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
                            width: 110,
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            // color: Colors.grey,
                            // height: 100,
                            width: 110,
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'New',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 110,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle4.png'),
                            Text('Rich Dad Poor Dad Ro. T')
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 110,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle5.png'),
                            Text('Piyasa muhamud Ga Tebkign'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 110,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle4.png'),
                            Text('Rich Dad Poor Dad Ro. T')
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 110,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle5.png'),
                            Text('Piyasa muhamud Ga Tebkign'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 110,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle4.png'),
                            Text('Rich Dad Poor Dad Ro. T')
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 110,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle5.png'),
                            Text('Piyasa muhamud Ga Tebkign'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Trending',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
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
                            width: 110,
                            child: Column(
                              children: [
                                Image.asset('assets/Rectangle6.png'),
                                Text(
                                  'Born Crime by Trevor noha',
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
                            width: 110,
                            child: Column(
                              children: [
                                Image.asset('assets/Rectangle7.png'),
                                Text(
                                  'Evolution of the learning brain',
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            // color: Colors.grey,
                            // height: 100,
                            width: 110,
                            child: Column(
                              children: [
                                Image.asset('assets/Rectangle6.png'),
                                Text(
                                  'Born Crime by Trevor noha',
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            // color: Colors.grey,
                            // height: 100,
                            width: 110,
                            child: Column(
                              children: [
                                Image.asset('assets/Rectangle7.png'),
                                Text(
                                  'Evolution of the learning brain',
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
                            width: 110,
                            child: Column(
                              children: [
                                Image.asset('assets/Rectangle6.png'),
                                Text(
                                  'Born Crime by Trevor noha',
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            // color: Colors.grey,
                            // height: 100,
                            width: 110,
                            child: Column(
                              children: [
                                Image.asset('assets/Rectangle7.png'),
                                Text(
                                  'Evolution of the learning brain',
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
      ),
    );
  }
}
