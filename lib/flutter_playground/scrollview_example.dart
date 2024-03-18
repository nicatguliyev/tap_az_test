import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollViewExample extends StatefulWidget {
  @override
  State<ScrollViewExample> createState() {
    return ScrollViewExampleState();
  }
}

class ScrollViewExampleState extends State<ScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Colors.green,
        width: 400,
      ),
    );
  }
}
