import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/image.dart';
import 'package:flutter_application_1/pages/ButtonsPage.dart';
import 'package:flutter_application_1/pages/Experiment1.dart';

class Experiment3 extends StatefulWidget {
  const Experiment3({super.key});

  @override
  State<Experiment3> createState() => _Experiment3State();
}

class _Experiment3State extends State<Experiment3> {
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
            Text("Experient3", style: TextStyle(color: Colors.white)),
            Icon(Icons.question_answer, color: Colors.white),
          ],
        ),
      ),
      body: tabNumber == 0
          ? Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/main');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.home_outlined, size: 22),
                        Text(" HOME"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.person_2_outlined, size: 22),
                        Text(" ABOUT"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contacts');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.phone_outlined, size: 22),
                        Text(" CONTACTS"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Buttonspage()),
                    );
                  },
                  child: Text("HomePage"),
                ),
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
