import 'package:flutter/material.dart';
import 'package:test02/second_screen.dart';
import 'package:test02/youtube.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print("image pressed");
              },
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.gadgets360cdn.com/large/flipkart_big_billion_days_sale_2021_october_3_10_1632726422781.jpg'),
                      fit: BoxFit.cover),
                  color: Colors
                      .black26, /*border: Border.all(color: Colors.black, width: 2)*/
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors
                          .black26, /*border: Border.all(color: Colors.black, width: 2)*/
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.access_alarm_outlined,
                        size: 30,
                      ),
                      onPressed: () {
                        print("alarm Button pressed");
                      },
                    )),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors
                        .black26, /*border: Border.all(color: Colors.black, width: 2)*/
                  ),
                  child: const Icon(Icons.heat_pump_rounded, size: 30),
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors
                        .black26, /*border: Border.all(color: Colors.black, width: 2)*/
                  ),
                  child:
                      const Icon(Icons.handyman, size: 30, color: Colors.red),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                print("pressed resent");
              },
              child: const Text(
                "Recent",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => you_screen()));
              },
              child: Container(
                height: 80,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors
                      .black26, /*border: Border.all(color: Colors.black, width: 2)*/
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.youtube_searched_for_outlined, size: 30),
                      Text(
                        "Youtube",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.arrow_circle_right_outlined, size: 30),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors
                    .black26, /*border: Border.all(color: Colors.black, width: 2)*/
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // print("Inkwell button pressed (cart)");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Second_screen()));
                  },
                  child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors
                          .black26, /*border: Border.all(color: Colors.black, width: 2)*/
                    ),
                    child: const Center(
                      child: Text(
                        "Cart",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(),
              ],
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
