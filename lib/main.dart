import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_pattern/screen/view/first_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => SliderPattern()},
    ),
  );
}
