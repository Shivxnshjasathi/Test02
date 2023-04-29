import 'package:flutter/material.dart';

class you_screen extends StatelessWidget {
  you_screen({super.key});

  final emailcontroller = TextEditingController();
  final Passwordcontroller = TextEditingController();
  final Passwordcontroller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.black12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    labelText: "Email",
                    hintText: "Enter your Email"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.black12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: Passwordcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    labelText: "password",
                    hintText: "Enter your password"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: Passwordcontroller2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        labelText: "password",
                        hintText: "Enter your password again"),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Details Submited"),
                          content: Container(
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Email : " + emailcontroller.text),
                                  Text("Password : " + Passwordcontroller.text),
                                  Text(
                                      "Password : " + Passwordcontroller2.text),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  child: const Center(
                    child: Text("Check details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              final snackbar = SnackBar(
                content: const Text("enter all details corectly"),
                action: SnackBarAction(
                  label: "see details",
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Details Submited"),
                            content: Container(
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Email : " + emailcontroller.text),
                                    Text("Password : " +
                                        Passwordcontroller.text),
                                    Text("Password : " +
                                        Passwordcontroller2.text),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.blue),
              child: const Center(
                child: Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
