import 'package:flutter/material.dart';

class Experiment4 extends StatefulWidget {
  const Experiment4({super.key});

  @override
  State<Experiment4> createState() => _Experiment4State();
}

class _Experiment4State extends State<Experiment4> {
  int tabNumber = 0;
  int number = 0;
  int number1 = 0;
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
            Text("Experient4", style: TextStyle(color: Colors.white)),
            Icon(Icons.question_answer, color: Colors.white),
          ],
        ),
      ),
      body: tabNumber == 0
          ? Center(child: Text("$number1", style: TextStyle(fontSize: 28)))
          : Center(child: Text("$number", style: TextStyle(fontSize: 28))),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
