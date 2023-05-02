import 'package:flutter/material.dart';
import 'package:test02/second_screen.dart';
import 'package:test02/youtube.dart';
import 'dashboard.dart';

class tabbar_screen extends StatefulWidget {
  const tabbar_screen({super.key});

  @override
  State<tabbar_screen> createState() => _tabbar_screenState();
}

class _tabbar_screenState extends State<tabbar_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
              bottom: TabBar(
                labelColor: Colors.white,
                dividerColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                tabs: [
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Call",
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [Dashboard(), you_screen(), Second_screen()],
            )));
  }
}
