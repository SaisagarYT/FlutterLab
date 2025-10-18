import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/image.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int tabNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/buttons');
              },
              child: Icon(Icons.navigate_before, color: Colors.white),
            ),
            Text("Experient1", style: TextStyle(color: Colors.white)),
            Icon(Icons.question_answer, color: Colors.white),
          ],
        ),
      ),
      body: tabNumber == 0
          ? Center(
              child: Container(
                width: 250,
                height: 300,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        AppImages.robotImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Pesticide Robot",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 110,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 25,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 110,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            tabNumber = value;
          });
          print(tabNumber);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "PART-A"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "PART-B"),
        ],
      ),
    );
  }
}
