import 'package:flutter/material.dart';

class TestSearchTextField extends StatelessWidget {
  const TestSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, height: 60, child: Row(children: [TextField()],),);
  }
}
