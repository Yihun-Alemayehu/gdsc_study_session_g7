import 'package:flutter/material.dart';
import 'package:gdsc_bookstore/home_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 2;
  List pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Image.asset('assets/web-content.png'),
            title: Text(""),
            selectedColor: Colors.amber[900],
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Image.asset('assets/open-book.png'),
            title: Text(""),
            selectedColor: Colors.amber[900],
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Image.asset('assets/home.png'),
            title: Text(""),
            selectedColor: Colors.amber[900],
          ),

          /// Book
          SalomonBottomBarItem(
            icon: Image.asset('assets/book.png'),
            title: Text(""),
            selectedColor: Colors.amber[900],
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Image.asset('assets/user.png'),
            title: Text(""),
            selectedColor: Colors.amber[900],
          ),
        ],
      ),
    );
  }
}
