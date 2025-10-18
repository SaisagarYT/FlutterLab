import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_widgets/Experiments.dart';

class Buttonspage extends StatefulWidget {
  const Buttonspage({super.key});

  @override
  State<Buttonspage> createState() => _ButtonspageState();
}

class _ButtonspageState extends State<Buttonspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Flutter Experiments",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Experiments(title: "Experiemnt2"),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/exp2'),
              child: Experiments(title: "Experiemnt3"),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/exp3'),
              child: Experiments(title: "Experiemnt4"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/exp4');
              },
              child: Experiments(title: "Experiemnt5"),
            ),
            Experiments(title: "Experiemnt6"),
            Experiments(title: "Experiemnt7"),
            Experiments(title: "Experiemnt8"),
            Experiments(title: "Experiemnt9"),
          ],
        ),
      ),
    );
  }
}
