import 'package:flutter/material.dart';

class SliderPattern extends StatefulWidget {
  const SliderPattern({Key? key}) : super(key: key);

  @override
  State<SliderPattern> createState() => _SliderPatternState();
}

class _SliderPatternState extends State<SliderPattern> {
  double S1 = 1;
  String P1 = '1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Slider Pattern",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Slider(
              inactiveColor: Colors.grey.shade300,
              value: S1,
              min: 1,
              max: 5,
              activeColor: Colors.grey,
              divisions: 4,
              label: S1.round().toString(),
              onChanged: (value) {
                setState(() {
                  S1 = value;
                });
              },
              onChangeEnd: _generatePattern,
            ),
            SizedBox(height: 30),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade400,
              ),
              child: Center(
                child: Text(
                  P1,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _generatePattern(double value) {
    String p2 = '';
    for (int i = 1; i <= value; i++) {
      p2 += "${List.generate(i, (j) => j + 1).join()} \n";
    }
    setState(() {
      P1 = p2;
    });
  }
}
