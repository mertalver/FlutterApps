import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 230, 72, 4),
          Color.fromARGB(255, 243, 180, 13),
        ),
      ),
    ),
  );
}
