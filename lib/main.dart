import 'package:flutter/material.dart';
import 'package:test02/dashboard.dart';
import 'package:test02/second_screen.dart';
import 'package:test02/splash_screen.dart';
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

  var screens = [Dashboard(), Second_screen(), you_screen()];

  void _onitemtapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Hotstar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.search,
              size: 30,
            )
          ],
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          width: 300,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(child: Text("Drawer header")),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                    height: 50,
                    width: 300,
                    child: Row(
                      children: const [
                        Icon(Icons.home),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "home",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
              ),
              const ListTile(
                leading: Icon(Icons.face),
                title: Text("Profile"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("setting"),
              )
            ],
          )),
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
