import 'package:flutter/material.dart';
import 'package:test02/dashboard.dart';
import 'package:test02/second_screen.dart';
import 'package:test02/splash_screen.dart';
import 'package:test02/tabbar_screen.dart';
import 'package:test02/youtube.dart';

void main() {
  runApp(const firstclass());
}

class firstclass extends StatelessWidget {
  const firstclass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      title: "My App",
      debugShowCheckedModeBanner: false,
    );
  }
}

class Constant extends StatefulWidget {
  const Constant({super.key});

  @override
  State<Constant> createState() => _ConstantState();
}

class _ConstantState extends State<Constant> {
  int _selectedindex = 0;

  var screens = [tabbar_screen(), Second_screen(), you_screen()];

  void _onitemtapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.youtube_searched_for), label: "Search"),
        ],
        currentIndex: _selectedindex,
        onTap: _onitemtapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        elevation: 20,
        enableFeedback: true,
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
