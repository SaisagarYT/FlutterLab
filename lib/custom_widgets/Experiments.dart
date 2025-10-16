import 'package:flutter/material.dart';

class Experiments extends StatelessWidget {
  final String title;
  const Experiments({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(title),
          ),
        ),
      ],
    );
  }
}
