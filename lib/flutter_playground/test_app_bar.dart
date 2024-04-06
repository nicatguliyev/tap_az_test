import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestAppbar extends StatelessWidget {
  const TestAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Tap.az"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1000,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
