import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

   setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Game Store",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: [
          HomePage(),
          Center(child: Text("2")),
          Center(child: Text("3")),
          Center(child: Text("4")),
        ][_currentIndex],
        bottomNavigationBar: NavigationBar(),
    ),
    );
  }


  Widget NavigationBar() {
    return Container(
      color: Color(0xFFF6F8FF),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.shifting,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: Color(0xFF5F67EA),
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            currentIndex: _currentIndex,
            onTap: (index)=> setCurrentIndex(index),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                label: "application",
                icon: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Film",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 30,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Book",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: const Icon(
                    Icons.auto_stories_rounded,
                    size: 30,
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

