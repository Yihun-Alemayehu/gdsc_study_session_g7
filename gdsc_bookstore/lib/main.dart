import 'package:flutter/material.dart';
import 'package:gdsc_bookstore/book_info_screen.dart';
import 'package:gdsc_bookstore/home_page.dart';
import 'package:gdsc_bookstore/onboarding_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const OnboardingScreen(),
      '/main': (context) => const MainPage(),
      '/book-review': (context) => const BookReview(),
      // '/taskdetail':(context) => const TaskDetailPage()
    },
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
    const OnboardingScreen(),
    const BookReview(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
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
            title: const Text(""),
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
