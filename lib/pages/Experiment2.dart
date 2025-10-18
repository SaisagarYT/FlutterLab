import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/image.dart';

class Experiment2 extends StatefulWidget {
  const Experiment2({super.key});

  @override
  State<Experiment2> createState() => _Experiment2State();
}

class _Experiment2State extends State<Experiment2> {
  int tabNumber = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait = size.height > size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/buttons'),
              child: const Icon(Icons.navigate_before, color: Colors.white),
            ),
            const Text("Experiment 2", style: TextStyle(color: Colors.white)),
            const Icon(Icons.question_answer, color: Colors.white),
          ],
        ),
      ),
      body: tabNumber == 0
          ? _buildPartA(context, size, isPortrait)
          : _buildPartB(context, size, isPortrait),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabNumber,
        onTap: (value) {
          setState(() {
            tabNumber = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "PART-A"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "PART-B"),
        ],
      ),
    );
  }

  Widget _buildPartA(BuildContext context, Size size, bool isPortrait) {
    double cardWidth = isPortrait ? size.width * 0.7 : size.width * 0.4;
    double cardHeight = isPortrait ? size.height * 0.45 : size.height * 0.6;

    return Center(
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          color: Colors.blue.shade600,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(AppImages.robotImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              flex: 2,
              child: Text(
                "Pesticide Robot",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isPortrait ? 20 : 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPartB(BuildContext context, Size size, bool isPortrait) {
    double boxSize = isPortrait ? size.width * 0.35 : size.width * 0.22;
    double spacing = isPortrait ? 15 : 25;

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.center,
              spacing: spacing,
              runSpacing: spacing,
              children: [
                _coloredBox(Colors.pinkAccent, boxSize),
                _coloredBox(Colors.orangeAccent, boxSize),
                Stack(
                  alignment: Alignment.center,
                  children: [_coloredBox(Colors.blue, boxSize)],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    _coloredBox(
                      const Color.fromARGB(255, 243, 33, 215),
                      boxSize,
                    ),
                  ],
                ),
                _coloredBox(Colors.greenAccent, boxSize),
                _coloredBox(Colors.deepPurpleAccent, boxSize),
                _coloredBox(const Color.fromARGB(255, 240, 202, 105), boxSize),
                _coloredBox(const Color.fromARGB(255, 77, 228, 255), boxSize),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _coloredBox(Color color, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
