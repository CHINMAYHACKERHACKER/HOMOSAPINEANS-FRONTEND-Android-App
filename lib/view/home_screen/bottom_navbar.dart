import 'package:flutter/material.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';

class BotomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BotomNavigationBarState();
  }
}

class _BotomNavigationBarState extends State<BotomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // final newTrip = Trip(null, null, null, null, null, null);
    return Scaffold(
      body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onTabTapped(1);
        },
        tooltip: "Add Savings",
        child: Icon(Icons.attach_money, color: Colors.indigo),
        elevation: 4.0,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.attach_money),
              label: "Save",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle),
              label: "Profile",
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
