import 'package:flutter/material.dart';

class SliderPattern extends StatefulWidget {
  const SliderPattern({Key? key}) : super(key: key);

  @override
  State<SliderPattern> createState() => _SliderPatternState();
}

class _SliderPatternState extends State<SliderPattern> {
  double Sliderpattern = 1;
  String Pattern = '';

  void _generatePattern(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    setState(() {
      Pattern = pattern;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar( backgroundColor: Colors.grey,
        title: Text(
          "Slider Pattern",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
        ),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            inactiveColor: Colors.grey.shade300,
            value: Sliderpattern,
            min: 1,
            max: 5,
            activeColor: Colors.grey,
            divisions: 4,
            label: Sliderpattern.round().toString(),
            onChanged: (value) {
              setState(() {
                Sliderpattern = value;
              });
            },
            onChangeEnd: _generatePattern,
          ),
          const SizedBox(height: 20),
          Container(
            height: 250,
            width: 250,
            color: Colors.grey.shade400,
            child: Center(
              child: Text(
                Pattern,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
