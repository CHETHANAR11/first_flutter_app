import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      //widget
      home: Scaffold(
        //widget
        body: GradientContainer //coustom widget-ststefull,less
            (Colors.black, Color.fromARGB(255, 12, 236, 225)),
      ),
    ),
  );
}
