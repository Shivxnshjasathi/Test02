import 'package:flutter/material.dart';

class Second_screen extends StatefulWidget {
  const Second_screen({super.key});

  @override
  State<Second_screen> createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  Color containcolr = Colors.white;

  var size = [2, 3465, 567562, 34636];

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
                "Cart",
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
            itemCount: size.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 400,
                width: 400,
                color: Colors.blue,
              );
            },
          ),
        )

        /* Stack(alignment: Alignment.center, children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green
                      .shade300 /*border: Border.all(color: Colors.black, width: 2)*/
                  ),
            ),
            Image.asset(
              "assets/png-transparent-green-sneakers-skate-shoe-nike-nike-sports-shoes-blue-sport-logo-removebg-preview.png",
              height: 500,
              width: 500,
            ),
          ]),*/

        );
  }
}
