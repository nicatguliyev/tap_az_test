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

class ColumnInScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            height: 500,
          ),
          Container(
            color: Colors.grey,
            height: 700,
          )
        ],
      ),
    );
  }
}
